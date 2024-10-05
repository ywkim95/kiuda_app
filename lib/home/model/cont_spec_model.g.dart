// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cont_spec_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ContSpecModelImpl _$$ContSpecModelImplFromJson(Map<String, dynamic> json) =>
    _$ContSpecModelImpl(
      id: json['id'] as int,
      name: json['name'] as String,
      varName: json['varName'] as String?,
      controllerType:
          $enumDecode(_$ControllerSpecEnumEnumMap, json['controllerType']),
      specificationSteps: (json['specificationSteps'] as List<dynamic>?)
          ?.map((e) => ContSpecStepModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      description: json['description'] as String?,
      unit: json['unit'] as String,
      min: (json['min'] as num).toDouble(),
      max: (json['max'] as num).toDouble(),
      step: (json['step'] as num).toDouble(),
      useYn: json['useYn'] as bool,
    );

Map<String, dynamic> _$$ContSpecModelImplToJson(_$ContSpecModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'varName': instance.varName,
      'controllerType': instance.controllerType,
      'specificationSteps': instance.specificationSteps,
      'description': instance.description,
      'unit': instance.unit,
      'min': instance.min,
      'max': instance.max,
      'step': instance.step,
      'useYn': instance.useYn,
    };

const _$ControllerSpecEnumEnumMap = {
  ControllerSpecEnum.DIGITAL: 'DIGITAL',
  ControllerSpecEnum.SLIDER: 'SLIDER',
  ControllerSpecEnum.STEPSWITCH: 'STEPSWITCH',
};
