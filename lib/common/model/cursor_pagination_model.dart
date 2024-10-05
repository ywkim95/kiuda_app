import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podo_darae_lab/common/model/cursor_model.dart';

part 'cursor_pagination_model.g.dart';

abstract class CursorPaginationBase {}

class CursorPaginationError extends CursorPaginationBase {
  final String message;

  CursorPaginationError({
    required this.message,
  });
}

class CursorPaginationLoading extends CursorPaginationBase {}

@JsonSerializable(
  genericArgumentFactories: true,
)
class CursorPagination<T> extends CursorPaginationBase {
  final List<T> data;
  final CursorModel cursor;
  final int count;
  final String? next;

  CursorPagination({
    required this.data,
    required this.cursor,
    required this.count,
    this.next,
  });

  CursorPagination copyWith({
    List<T>? data,
    CursorModel? cursor,
    int? count,
    String? next,
  }) {
    return CursorPagination<T>(
      data: data ?? this.data,
      cursor: cursor ?? this.cursor,
      count: count ?? this.count,
      next: next ?? this.next,
    );
  }

  factory CursorPagination.fromJson(
          Map<String, dynamic> json, T Function(Object? json) fromJsonT) =>
      _$CursorPaginationFromJson(json, fromJsonT);
}

class CursorPaginationRefetching<T> extends CursorPagination<T> {
  CursorPaginationRefetching({
    required super.data,
    required super.cursor,
    required super.count,
    required super.next,
  });
}

class CursorPaginationFetchingMore<T> extends CursorPagination<T> {
  CursorPaginationFetchingMore({
    required super.data,
    required super.cursor,
    required super.count,
    required super.next,
  });
}
