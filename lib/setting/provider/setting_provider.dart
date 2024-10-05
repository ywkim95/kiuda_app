import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podo_darae_lab/common/utilities/data_utillities.dart';
import 'package:podo_darae_lab/home/model/device_model.dart';
import 'package:podo_darae_lab/setting/repository/setting_repository.dart';

final settingProvider =
    StateNotifierProvider<SettingStateNotifier, List<DeviceModel>>(
        (ref) => SettingStateNotifier(ref: ref));

class SettingStateNotifier extends StateNotifier<List<DeviceModel>> {
  SettingStateNotifier({required this.ref}) : super([]);
  Ref ref;

  Future<void> getSettingValue({
    required String roomId,
  }) async {
    final resp = await ref
        .read(settingRepositoryProvider)
        .getSettingValue(roomId: roomId);
    state = resp;
  }

  Future<void> setSettingValue({
    required String roomId,
    required List<DeviceModel> model,
  }) async {
    final resp = await ref
        .read(settingRepositoryProvider)
        .setSettingValue(roomId: roomId, body: model);
    if (resp['status']!) {
      DataUtillities.toast(message: '설정을 저장하였습니다.');
    } else {
      DataUtillities.toast(message: '설정을 저장하는데 실패하였습니다. 확인 바랍니다.');
      throw Exception();
    }
  }
}
