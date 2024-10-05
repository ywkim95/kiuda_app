// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temp_result_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TempResultDataModelImpl _$$TempResultDataModelImplFromJson(
        Map<String, dynamic> json) =>
    _$TempResultDataModelImpl(
      tableAndGraph: (json['tableAndGraph'] as List<dynamic>)
          .map((e) => TempModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TempResultDataModelImplToJson(
        _$TempResultDataModelImpl instance) =>
    <String, dynamic>{
      'tableAndGraph': instance.tableAndGraph,
    };
