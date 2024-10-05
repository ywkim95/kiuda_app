// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'device_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeviceModelImpl _$$DeviceModelImplFromJson(Map<String, dynamic> json) =>
    _$DeviceModelImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      clientId: json['clientId'] as String,
      location: json['location'] as String?,
      description: json['description'] as String,
      classify: $enumDecode(_$TypeEnumEnumMap, json['classify']),
      statusCode: json['statusCode'] as int,
      useYn: json['useYn'] as bool,
      controllers: (json['controllers'] as List<dynamic>?)
          ?.map((e) => ContDeviceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      sensors: (json['sensors'] as List<dynamic>?)
          ?.map((e) => SensorDeviceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$DeviceModelImplToJson(_$DeviceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'clientId': instance.clientId,
      'location': instance.location,
      'description': instance.description,
      'classify': instance.classify,
      'statusCode': instance.statusCode,
      'useYn': instance.useYn,
      'controllers': instance.controllers,
      'sensors': instance.sensors,
    };

const _$TypeEnumEnumMap = {
  TypeEnum.SENSOR: 'SENSOR',
  TypeEnum.CONTROLLER: 'CONTROLLER',
};
