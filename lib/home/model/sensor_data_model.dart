import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podo_darae_lab/home/model/device_model.dart';

part 'sensor_data_model.g.dart';
part 'sensor_data_model.freezed.dart';

@freezed
class SensorDataModel with _$SensorDataModel {
  const factory SensorDataModel({
    required int id,
    double? s1,
    double? s2,
    double? s3,
    double? s4,
    double? s5,
    double? s6,
    double? s7,
    double? s8,
    double? s9,
    double? s10,
    double? s11,
    double? s12,
    double? s13,
    double? s14,
    double? s15,
    double? s16,
    double? s17,
    double? s18,
    double? s19,
    double? s20,
    required double rssi,
    required double sqn,
    required DeviceModel device,
  }) = _SensorDataModel;

  factory SensorDataModel.fromJson(Map<String, dynamic> json) =>
      _$SensorDataModelFromJson(json);
}
