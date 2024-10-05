import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podo_darae_lab/home/model/device_model.dart';

part 'controller_data_model.g.dart';
part 'controller_data_model.freezed.dart';

@freezed
class ControllerDataModel with _$ControllerDataModel {
  const factory ControllerDataModel({
    required int id,
    String? gpio1,
    String? gpio2,
    required double rssi,
    required double sqn,
    required DeviceModel device,
  }) = _ControllerDataModel;

  factory ControllerDataModel.fromJson(Map<String, dynamic> json) =>
      _$ControllerDataModelFromJson(json);
}
