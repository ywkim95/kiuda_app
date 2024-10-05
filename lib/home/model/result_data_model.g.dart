// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'result_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResultDataModelImpl _$$ResultDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$ResultDataModelImpl(
      tableAndGraph: (json['tableAndGraph'] as List<dynamic>)
          .map((e) => ChartGraphModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      irradiance:
          IrradianceModel.fromJson(json['irradiance'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResultDataModelImplToJson(
        _$ResultDataModelImpl instance) =>
    <String, dynamic>{
      'tableAndGraph': instance.tableAndGraph,
      'irradiance': instance.irradiance,
    };
