import 'package:flutter_riverpod/flutter_riverpod.dart';

final roomIdProvider =
    NotifierProvider<RoomIdNotifier, String>(RoomIdNotifier.new);

class RoomIdNotifier extends Notifier<String> {
  @override
  String build() => '';

  void setRoomId(String roomId) => state = roomId;
}
