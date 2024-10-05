// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'excel_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ExcelDataModel _$ExcelDataModelFromJson(Map<String, dynamic> json) =>
    ExcelDataModel(
      sort: json['sort'] as String,
      code: json['code'],
      province: json['province'] as String,
      city: json['city'] as String?,
      village: json['village'] as String?,
      gridX: json['gridX'] as String,
      gridY: json['gridY'] as String,
      longitudeH: json['longitudeH'] as String,
      longitudeM: json['longitudeM'] as String,
      longitudeS: json['longitudeS'] as String,
      latitudeH: json['latitudeH'] as String,
      latitudeM: json['latitudeM'] as String,
      latitudeS: json['latitudeS'] as String,
      longitudeS100: json['longitudeS100'] as String,
      latitudeS100: json['latitudeS100'] as String,
      update: json['update'],
    );

Map<String, dynamic> _$ExcelDataModelToJson(ExcelDataModel instance) =>
    <String, dynamic>{
      'sort': instance.sort,
      'code': instance.code,
      'province': instance.province,
      'city': instance.city,
      'village': instance.village,
      'gridX': instance.gridX,
      'gridY': instance.gridY,
      'longitudeH': instance.longitudeH,
      'longitudeM': instance.longitudeM,
      'longitudeS': instance.longitudeS,
      'latitudeH': instance.latitudeH,
      'latitudeM': instance.latitudeM,
      'latitudeS': instance.latitudeS,
      'longitudeS100': instance.longitudeS100,
      'latitudeS100': instance.latitudeS100,
      'update': instance.update,
    };
