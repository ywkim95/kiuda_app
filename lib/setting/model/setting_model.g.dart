// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'setting_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingModelImpl _$$SettingModelImplFromJson(Map<String, dynamic> json) =>
    _$SettingModelImpl(
      sensorList: (json['sensorList'] as List<dynamic>)
          .map((e) => SensorDeviceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      controllerList: (json['controllerList'] as List<dynamic>)
          .map((e) => ContDeviceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      useYnList: (json['useYnList'] as List<dynamic>)
          .map((e) => DeviceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SettingModelImplToJson(_$SettingModelImpl instance) =>
    <String, dynamic>{
      'sensorList': instance.sensorList,
      'controllerList': instance.controllerList,
      'useYnList': instance.useYnList,
    };
