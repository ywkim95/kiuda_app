// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cont_spec_step_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContSpecStepModelImpl _$$ContSpecStepModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ContSpecStepModelImpl(
      value: (json['value'] as num).toDouble(),
      label: json['label'] as String,
      useYn: json['useYn'] as bool,
    );

Map<String, dynamic> _$$ContSpecStepModelImplToJson(
        _$ContSpecStepModelImpl instance) =>
    <String, dynamic>{
      'value': instance.value,
      'label': instance.label,
      'useYn': instance.useYn,
    };
