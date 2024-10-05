// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cont_device_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContDeviceModelImpl _$$ContDeviceModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ContDeviceModelImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      varName: json['varName'] as String?,
      location: json['location'] as String?,
      useYn: json['useYn'] as bool,
      mappingSensorId: json['mappingSensorId'] as int,
      connectedDeviceId: json['connectedDeviceId'] as int,
      specification: json['specification'] == null
          ? null
          : ContSpecModel.fromJson(
              json['specification'] as Map<String, dynamic>),
      userCustomValues: (json['userCustomValues'] as List<dynamic>?)
          ?.map((e) => UserCustomValueModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ContDeviceModelImplToJson(
        _$ContDeviceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'varName': instance.varName,
      'location': instance.location,
      'useYn': instance.useYn,
      'mappingSensorId': instance.mappingSensorId,
      'connectedDeviceId': instance.connectedDeviceId,
      'specification': instance.specification,
      'userCustomValues': instance.userCustomValues,
    };
