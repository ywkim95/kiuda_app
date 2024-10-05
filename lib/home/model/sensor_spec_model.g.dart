// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensor_spec_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SensorSpecModelImpl _$$SensorSpecModelImplFromJson(
        Map<String, dynamic> json) =>
    _$SensorSpecModelImpl(
      name: json['name'] as String,
      varName: json['varName'] as String?,
      description: json['description'] as String?,
      model: json['model'] as String,
      manufacturer: json['manufacturer'] as String,
      decimalPlaces: json['decimalPlaces'] as int?,
      graphMode: json['graphMode'] as String?,
      useYn: json['useYn'] as bool,
      unit: json['unit'] as String,
      minValue: json['minValue'] as int,
      maxValue: json['maxValue'] as int,
      lowWarningStart: json['lowWarningStart'] as int,
      lowWarningEnd: json['lowWarningEnd'] as int,
      stableStart: json['stableStart'] as int,
      stableEnd: json['stableEnd'] as int,
      highWarningStart: json['highWarningStart'] as int,
      highWarningEnd: json['highWarningEnd'] as int,
      dangerStart: json['dangerStart'] as int,
      dangerEnd: json['dangerEnd'] as int,
    );

Map<String, dynamic> _$$SensorSpecModelImplToJson(
        _$SensorSpecModelImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'varName': instance.varName,
      'description': instance.description,
      'model': instance.model,
      'manufacturer': instance.manufacturer,
      'decimalPlaces': instance.decimalPlaces,
      'graphMode': instance.graphMode,
      'useYn': instance.useYn,
      'unit': instance.unit,
      'minValue': instance.minValue,
      'maxValue': instance.maxValue,
      'lowWarningStart': instance.lowWarningStart,
      'lowWarningEnd': instance.lowWarningEnd,
      'stableStart': instance.stableStart,
      'stableEnd': instance.stableEnd,
      'highWarningStart': instance.highWarningStart,
      'highWarningEnd': instance.highWarningEnd,
      'dangerStart': instance.dangerStart,
      'dangerEnd': instance.dangerEnd,
    };
