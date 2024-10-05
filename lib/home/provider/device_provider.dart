import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podo_darae_lab/home/model/device_model.dart';
import 'package:podo_darae_lab/home/repository/device_repository.dart';

final deviceProvider =
    StateNotifierProvider<DeviceStateNotifier, List<DeviceModel>>(
        (ref) => DeviceStateNotifier(ref: ref));

class DeviceStateNotifier extends StateNotifier<List<DeviceModel>> {
  DeviceStateNotifier({required this.ref}) : super([]);
  Ref ref;

  Future<void> getDeviceList(String roomId) async {
    try {
      final devices =
          await ref.read(deviceRepositoryProvider).getDevices(roomId: roomId);

      // ref.read(contDeviceProvider.notifier).reset();
      // ref.read(sensorDeviceProvider.notifier).reset();

      // for (var device in devices) {
      //   if (device.classify == TypeEnum.SENSOR) {
      //     log('sensor: ${device.id}');

      //     await ref
      //         .read(sensorDeviceProvider.notifier)
      //         .getSensorDeviceList(deviceId: device.id);
      //   } else if (device.classify == TypeEnum.CONTROLLER) {
      //     log('controller: ${device.id}');
      //     await ref
      //         .read(contDeviceProvider.notifier)
      //         .getContDeviceList(deviceId: device.id);
      //   }
      // }

      state = [
        ...devices,
      ];
    } catch (e, stack) {
      log(stack.toString());
      log(e.toString());
    }
  }
}
