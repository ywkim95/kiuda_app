// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'excel_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExcelListModel _$ExcelListModelFromJson(Map<String, dynamic> json) =>
    ExcelListModel(
      items: (json['items'] as List<dynamic>)
          .map((e) => ExcelDataModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ExcelListModelToJson(ExcelListModel instance) =>
    <String, dynamic>{
      'items': instance.items,
    };
