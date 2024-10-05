import 'dart:developer';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podo_darae_lab/home/model/cont_device_model.dart';
import 'package:podo_darae_lab/home/model/sensor_device_model.dart';
import 'package:podo_darae_lab/home/model/set_controller_dto.dart';
import 'package:podo_darae_lab/home/provider/device_provider.dart';
import 'package:podo_darae_lab/home/repository/cont_device_repository.dart';

final contDeviceProvider =
    StateNotifierProvider<ContDeviceStateNotifier, List<ContDeviceModel>>(
        (ref) => ContDeviceStateNotifier(ref: ref));

class ContDeviceStateNotifier extends StateNotifier<List<ContDeviceModel>> {
  ContDeviceStateNotifier({required this.ref}) : super([]);
  Ref ref;

  void reset() {
    state = [];
  }

  Future<void> getContDeviceList({required int deviceId}) async {
    final contDevices = await ref
        .read(contDeviceRepositoryProvider)
        .getContDevices(deviceId: deviceId.toString());
    state = [...state, ...contDevices];
  }

  Future<List<SensorDeviceModel>> getSensorListByMappingId(
      {required int deviceId}) async {
    final sensorList = await ref
        .read(contDeviceRepositoryProvider)
        .getSensorDevicesByMappingId(deviceId: deviceId.toString());

    return sensorList;
  }

  Future<void> setContDevice(
      {required SetControllerDto dto,
      required int id,
      required String roomId}) async {
    try {
      final body = dto.toJson();
      final resp = await ref.read(contDeviceRepositoryProvider).setContDevice(
            body: body,
            deviceControllerId: id.toString(),
          );
      // final contDeviceModel = ContDeviceModel.fromJson(resp);

      // log('contDeviceModel $contDeviceModel');

      final filter = state.where((element) => element.id != resp.id);

      try {
        await ref.read(deviceProvider.notifier).getDeviceList(roomId);
      } catch (e, stack) {
        log('$e');
        log('$stack');
      }

      state = [...filter, resp];
    } catch (e, stack) {
      log('$e');
      log('$stack');
    }
  }
}
