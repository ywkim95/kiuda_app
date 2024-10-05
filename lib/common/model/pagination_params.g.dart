// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination_params.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationParamsImpl _$$PaginationParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$PaginationParamsImpl(
      order__createdAt: json['order__createdAt'] as String?,
      take: json['take'] as int?,
      where__id__more_than: json['where__id__more_than'] as int?,
      where__id__less_than: json['where__id__less_than'] as int?,
    );

Map<String, dynamic> _$$PaginationParamsImplToJson(
        _$PaginationParamsImpl instance) =>
    <String, dynamic>{
      'order__createdAt': instance.order__createdAt,
      'take': instance.take,
      'where__id__more_than': instance.where__id__more_than,
      'where__id__less_than': instance.where__id__less_than,
    };
