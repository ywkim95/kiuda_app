import 'dart:developer';
import 'dart:io';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podo_darae_lab/common/const/data_const.dart';
import 'package:podo_darae_lab/home/model/real_time_data_list_model.dart';
import 'package:podo_darae_lab/home/model/socket_state_model.dart';
import 'package:podo_darae_lab/home/provider/real_time_data_list_provider.dart';
import 'package:socket_io_client/socket_io_client.dart' as io;

final socketProvider =
    StateNotifierProvider<SocketStateNotifier, SocketState>((ref) {
  final socket = io.io('http://$ip/real-time', <String, dynamic>{
    'transports': ['websocket'],
    'autoConnect': false,
  });

  return SocketStateNotifier(socket, ref);
});

class SocketStateNotifier extends StateNotifier<SocketState> {
  final io.Socket socket;
  Ref ref;
  SocketStateNotifier(this.socket, this.ref) : super(SocketInitial());

  void connect({required String token, required String roomId}) {
    socket.opts!['extraHeaders'] = {
      HttpHeaders.authorizationHeader: 'Bearer $token'
    };
    // 기존의 이벤트 리스너 제거
    // 기존의 이벤트 리스너가 없으면 무시하도록 되어있음
    socket.off('connect');
    socket.off('disconnect');

    socket.onConnect((_) {
      log('Connected to socket.io Server');
      socket.emit('joinRoom', {'roomId': roomId});
      socket.on('receive_data', (data) {
        // log('$data');
        final model = RealTimeDataListModel.fromJson(data);
        ref.read(realTimeDataListProvider.notifier).receiveData(model: model);
      });
      state = SocketConnected();
    });

    socket.onDisconnect((_) {
      log('Disconnected from socket.io Server');

      socket.off('receive_data');
      state = SocketDisconnected();
    });

    socket.connect();
  }

  void disconnect({required String roomId}) {
    socket.emit('leaveRoom', {'roomId': roomId});
    socket.disconnect();
  }

  void pause() {
    socket.emit('pauseSendingData');
    state = SocketPaused();
  }

  void changeRoom({required String newRoomId}) {
    state = SocketChanged();
    log('Changed RoomId');
    socket.off('receive_data');
    socket.emit('joinRoom', {'roomId': newRoomId});
    socket.on('receive_data', (data) {
      // log('$data');
      final model = RealTimeDataListModel.fromJson(data);
      ref.read(realTimeDataListProvider.notifier).receiveData(model: model);
    });
    state = SocketConnected();
  }

  void resume({required String roomId}) {
    socket.emit('resumeSendingData', {'roomId': roomId});
    state = SocketConnected();
  }

  @override
  void dispose() {
    socket.disconnect();
    socket.dispose();
    super.dispose();
  }
}
