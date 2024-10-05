import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podo_darae_lab/home/model/sensor_device_model.dart';
import 'package:podo_darae_lab/home/repository/sensor_device_repository.dart';

final sensorDeviceProvider =
    StateNotifierProvider<SensorDeviceStateNotifier, List<SensorDeviceModel>>(
        (ref) => SensorDeviceStateNotifier(ref: ref));

class SensorDeviceStateNotifier extends StateNotifier<List<SensorDeviceModel>> {
  SensorDeviceStateNotifier({required this.ref}) : super([]);
  Ref ref;

  void reset() {
    state = [];
  }

  Future<void> getSensorDeviceList({required int deviceId}) async {
    try {
      final sensorDevices = await ref
          .read(sensorDeviceRepositoryProvider)
          .getSensorDevices(deviceId: deviceId.toString());
      // log('$sensorDevices');
      state = [...state, ...sensorDevices];
    } catch (e) {
      log('$e');
    }
  }
}
