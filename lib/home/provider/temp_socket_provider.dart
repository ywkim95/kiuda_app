import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podo_darae_lab/common/const/data_const.dart';
import 'package:podo_darae_lab/home/model/socket_state_model.dart';
import 'package:podo_darae_lab/home/model/temp_real_time_model.dart';
import 'package:podo_darae_lab/home/provider/temp_real_time_provider.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

final tempSocketProvider =
    StateNotifierProvider<TempSocketStateNotifier, SocketState>((ref) {
  final socket = io.io('http://$ip/real-time', <String, dynamic>{
    'transports': ['websocket'],
    'autoConnect': false,
  });

  return TempSocketStateNotifier(socket, ref);
});

class TempSocketStateNotifier extends StateNotifier<SocketState> {
  Ref ref;
  final io.Socket socket;
  TempSocketStateNotifier(this.socket, this.ref) : super(SocketInitial());

  void connect({required String token, required String roomId}) {
    socket.opts!['extraHeaders'] = {
      HttpHeaders.authorizationHeader: 'Bearer $token'
    };
    // 기존의 이벤트 리스너 제거
    // 기존의 이벤트 리스너가 없으면 무시하도록 되어있음
    socket.off('connect');
    socket.off('disconnect');

    socket.onConnect((_) {
      print('Connected to socket.io Server');
      socket.emit('tempJoinRoom', {'roomId': roomId});
      socket.on('receive_temp_data', (data) {
        print(data);
        final model = TempRealTimeModel.fromJson(data);
        ref.read(tempRealTimeProvider.notifier).receiveData(model: model);
      });
      state = SocketConnected();
    });

    socket.onDisconnect((data) {
      print('Disconnected from socket.io Server');

      socket.off('receive_temp_data');
      state = SocketDisconnected();
    });

    socket.connect();
  }

  void disconnect({required String roomId}) {
    socket.emit('tempLeaveRoom', {'roomId': roomId});
    socket.disconnect();
  }

  void pause() {
    socket.emit('pauseSendingTempData');
    state = SocketPaused();
  }

  void changeRoom({required String roomId}) {
    state = SocketChanged();
    print('Changed RoomId');

    socket.off('receive_temp_data');
    socket.emit('tempJoinRoom', {'roomId': roomId});
    socket.on('receive_temp_data', (data) {
      final model = TempRealTimeModel.fromJson(data);
      ref.read(tempRealTimeProvider.notifier).receiveData(model: model);
    });
    state = SocketConnected();
  }

  void resume({required String roomId}) {
    socket.emit('resumeSendingTempData', {'roomId': roomId});
    state = SocketConnected();
  }

  @override
  void dispose() {
    socket.disconnect();
    socket.dispose();
    super.dispose();
  }
}
