// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_controller_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetControllerDtoImpl _$$SetControllerDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SetControllerDtoImpl(
      name: json['name'] as String,
      varName: json['varName'] as String,
      location: json['location'] as String,
      useYn: json['useYn'] as bool,
      mappingSensorId: json['mappingSensorId'] as int,
      connectedDeviceId: json['connectedDeviceId'] as int,
      userCustomValues: (json['userCustomValues'] as List<dynamic>)
          .map((e) => SetUserCustomValueDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      device: json['device'] as int,
      specification: json['specification'] as int,
    );

Map<String, dynamic> _$$SetControllerDtoImplToJson(
        _$SetControllerDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'varName': instance.varName,
      'location': instance.location,
      'useYn': instance.useYn,
      'mappingSensorId': instance.mappingSensorId,
      'connectedDeviceId': instance.connectedDeviceId,
      'userCustomValues': instance.userCustomValues,
      'device': instance.device,
      'specification': instance.specification,
    };
