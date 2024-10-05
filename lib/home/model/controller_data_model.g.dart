// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ControllerDataModelImpl _$$ControllerDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ControllerDataModelImpl(
      id: json['id'] as int,
      gpio1: json['gpio1'] as String?,
      gpio2: json['gpio2'] as String?,
      rssi: (json['rssi'] as num).toDouble(),
      sqn: (json['sqn'] as num).toDouble(),
      device: DeviceModel.fromJson(json['device'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ControllerDataModelImplToJson(
        _$ControllerDataModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'gpio1': instance.gpio1,
      'gpio2': instance.gpio2,
      'rssi': instance.rssi,
      'sqn': instance.sqn,
      'device': instance.device,
    };
