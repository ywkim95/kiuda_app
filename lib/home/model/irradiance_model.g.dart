// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'irradiance_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IrradianceModelImpl _$$IrradianceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$IrradianceModelImpl(
      id: json['id'] as int,
      date: json['date'] as String,
      dataCount: json['dataCount'] as int,
      accumulatedIrradiance: (json['accumulatedIrradiance'] as num).toDouble(),
      deviceId: json['deviceId'] as int,
    );

Map<String, dynamic> _$$IrradianceModelImplToJson(
        _$IrradianceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'date': instance.date,
      'dataCount': instance.dataCount,
      'accumulatedIrradiance': instance.accumulatedIrradiance,
      'deviceId': instance.deviceId,
    };
