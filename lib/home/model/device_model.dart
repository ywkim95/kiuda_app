import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podo_darae_lab/home/enum/type_enum.dart';
import 'package:podo_darae_lab/home/model/cont_device_model.dart';
import 'package:podo_darae_lab/home/model/sensor_device_model.dart';

part 'device_model.g.dart';
part 'device_model.freezed.dart';

@freezed
class DeviceModel with _$DeviceModel {
  const factory DeviceModel({
    required int id,
    required String name,
    required String clientId,
    String? location,
    required String description,
    required TypeEnum classify,
    required int statusCode,
    required bool useYn,
    List<ContDeviceModel>? controllers,
    List<SensorDeviceModel>? sensors,
  }) = _DeviceModel;

  factory DeviceModel.fromJson(Map<String, dynamic> json) =>
      _$DeviceModelFromJson(json);
}
