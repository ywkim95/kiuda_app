import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podo_darae_lab/home/model/controller_data_model.dart';
import 'package:podo_darae_lab/home/model/sensor_data_model.dart';

part 'real_time_data_model.g.dart';
part 'real_time_data_model.freezed.dart';

@freezed
class RealTimeDataModel with _$RealTimeDataModel {
  const factory RealTimeDataModel({
    required int id,
    required String type,
    SensorDataModel? sensorData,
    ControllerDataModel? controllerData,
  }) = _RealTimeDataModel;

  factory RealTimeDataModel.fromJson(Map<String, dynamic> json) =>
      _$RealTimeDataModelFromJson(json);
}
