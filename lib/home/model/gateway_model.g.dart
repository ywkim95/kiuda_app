// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gateway_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GatewayModelImpl _$$GatewayModelImplFromJson(Map<String, dynamic> json) =>
    _$GatewayModelImpl(
      id: json['id'] as int,
      countryId: json['countryId'] as String,
      areaId: json['areaId'] as String,
      gatewayId: json['gatewayId'] as String,
      location: json['location'] as String,
      name: json['name'] as String,
      devices: (json['devices'] as List<dynamic>?)
          ?.map((e) => DeviceModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GatewayModelImplToJson(_$GatewayModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'countryId': instance.countryId,
      'areaId': instance.areaId,
      'gatewayId': instance.gatewayId,
      'location': instance.location,
      'name': instance.name,
      'devices': instance.devices,
    };
