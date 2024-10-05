// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'real_time_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RealTimeDataModelImpl _$$RealTimeDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$RealTimeDataModelImpl(
      id: json['id'] as int,
      type: json['type'] as String,
      sensorData: json['sensorData'] == null
          ? null
          : SensorDataModel.fromJson(
              json['sensorData'] as Map<String, dynamic>),
      controllerData: json['controllerData'] == null
          ? null
          : ControllerDataModel.fromJson(
              json['controllerData'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RealTimeDataModelImplToJson(
        _$RealTimeDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'sensorData': instance.sensorData,
      'controllerData': instance.controllerData,
    };
