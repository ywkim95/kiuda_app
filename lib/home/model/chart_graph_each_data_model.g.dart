// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chart_graph_each_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChartGraphEachDataModelImpl _$$ChartGraphEachDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ChartGraphEachDataModelImpl(
      min: (json['min'] as num).toDouble(),
      max: (json['max'] as num).toDouble(),
      average: (json['average'] as num).toDouble(),
    );

Map<String, dynamic> _$$ChartGraphEachDataModelImplToJson(
        _$ChartGraphEachDataModelImpl instance) =>
    <String, dynamic>{
      'min': instance.min,
      'max': instance.max,
      'average': instance.average,
    };
