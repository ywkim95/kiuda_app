import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podo_darae_lab/home/model/sensor_spec_model.dart';

part 'sensor_device_model.g.dart';
part 'sensor_device_model.freezed.dart';

@freezed
class SensorDeviceModel with _$SensorDeviceModel {
  const factory SensorDeviceModel({
    String? name,
    required int id,
    required double correctionValue,
    required double customStableStart,
    required double customStableEnd,
    SensorSpecModel? spec,
  }) = _SensorDeviceModel;

  factory SensorDeviceModel.fromJson(Map<String, dynamic> json) =>
      _$SensorDeviceModelFromJson(json);
}
