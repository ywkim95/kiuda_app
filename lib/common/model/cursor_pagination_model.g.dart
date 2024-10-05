// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cursor_pagination_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CursorPagination<T> _$CursorPaginationFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    CursorPagination<T>(
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
      cursor: CursorModel.fromJson(json['cursor'] as Map<String, dynamic>),
      count: json['count'] as int,
      next: json['next'] as String?,
    );

Map<String, dynamic> _$CursorPaginationToJson<T>(
  CursorPagination<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': instance.data.map(toJsonT).toList(),
      'cursor': instance.cursor,
      'count': instance.count,
      'next': instance.next,
    };
