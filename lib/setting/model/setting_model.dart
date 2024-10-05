import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podo_darae_lab/home/model/cont_device_model.dart';
import 'package:podo_darae_lab/home/model/device_model.dart';
import 'package:podo_darae_lab/home/model/sensor_device_model.dart';

part 'setting_model.g.dart';
part 'setting_model.freezed.dart';

@freezed
class SettingModel with _$SettingModel {
  const factory SettingModel({
    required List<SensorDeviceModel> sensorList,
    required List<ContDeviceModel> controllerList,
    required List<DeviceModel> useYnList,
  }) = _SettingModel;

  factory SettingModel.fromJson(Map<String, dynamic> json) =>
      _$SettingModelFromJson(json);
}
