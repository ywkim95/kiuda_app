// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_custom_value_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserCustomValueModelImpl _$$UserCustomValueModelImplFromJson(
        Map<String, dynamic> json) =>
    _$UserCustomValueModelImpl(
      id: json['id'] as int,
      manualValue: json['manualValue'] as int,
      gab: json['gab'] as int,
      memo: json['memo'] as String,
    );

Map<String, dynamic> _$$UserCustomValueModelImplToJson(
        _$UserCustomValueModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'manualValue': instance.manualValue,
      'gab': instance.gab,
      'memo': instance.memo,
    };
