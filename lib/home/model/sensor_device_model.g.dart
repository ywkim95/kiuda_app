// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensor_device_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SensorDeviceModelImpl _$$SensorDeviceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SensorDeviceModelImpl(
      name: json['name'] as String?,
      id: json['id'] as int,
      correctionValue: (json['correctionValue'] as num).toDouble(),
      customStableStart: (json['customStableStart'] as num).toDouble(),
      customStableEnd: (json['customStableEnd'] as num).toDouble(),
      spec: json['spec'] == null
          ? null
          : SensorSpecModel.fromJson(json['spec'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SensorDeviceModelImplToJson(
        _$SensorDeviceModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'correctionValue': instance.correctionValue,
      'customStableStart': instance.customStableStart,
      'customStableEnd': instance.customStableEnd,
      'spec': instance.spec,
    };
