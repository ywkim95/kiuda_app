// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      id: json['id'] as int,
      email: json['email'] as String,
      name: json['name'] as String,
      address: json['address'] as String,
      phoneNumber: json['phoneNumber'] as String,
      roles: $enumDecode(_$RolesEnumMap, json['roles']),
      permission: $enumDecode(_$PermissionEnumEnumMap, json['permission']),
      lastLoginDate: json['lastLoginDate'] as String,
      lastLoginIp: json['lastLoginIp'] as String,
      gateways: (json['gateways'] as List<dynamic>)
          .map((e) => GatewayModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'email': instance.email,
      'name': instance.name,
      'address': instance.address,
      'phoneNumber': instance.phoneNumber,
      'roles': instance.roles,
      'permission': instance.permission,
      'lastLoginDate': instance.lastLoginDate,
      'lastLoginIp': instance.lastLoginIp,
      'gateways': instance.gateways,
    };

const _$RolesEnumMap = {
  Roles.ADMIN: 'ADMIN',
  Roles.USER: 'USER',
};

const _$PermissionEnumEnumMap = {
  PermissionEnum.NONE: 'NONE',
  PermissionEnum.NORMAL: 'NORMAL',
  PermissionEnum.PREMIUM: 'PREMIUM',
  PermissionEnum.CUSTOM: 'CUSTOM',
};
