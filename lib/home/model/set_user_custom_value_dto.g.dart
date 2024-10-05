// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'set_user_custom_value_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SetUserCustomValueDtoImpl _$$SetUserCustomValueDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SetUserCustomValueDtoImpl(
      id: json['id'] as int,
      manualValue: json['manualValue'] as int,
      gab: json['gab'] as int,
      memo: json['memo'] as String,
    );

Map<String, dynamic> _$$SetUserCustomValueDtoImplToJson(
        _$SetUserCustomValueDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'manualValue': instance.manualValue,
      'gab': instance.gab,
      'memo': instance.memo,
    };
