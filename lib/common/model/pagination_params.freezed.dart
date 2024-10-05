// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pagination_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PaginationParams _$PaginationParamsFromJson(Map<String, dynamic> json) {
  return _PaginationParams.fromJson(json);
}

/// @nodoc
mixin _$PaginationParams {
  String? get order__createdAt => throw _privateConstructorUsedError;
  int? get take => throw _privateConstructorUsedError;
  int? get where__id__more_than => throw _privateConstructorUsedError;
  int? get where__id__less_than => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PaginationParamsCopyWith<PaginationParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaginationParamsCopyWith<$Res> {
  factory $PaginationParamsCopyWith(
          PaginationParams value, $Res Function(PaginationParams) then) =
      _$PaginationParamsCopyWithImpl<$Res, PaginationParams>;
  @useResult
  $Res call(
      {String? order__createdAt,
      int? take,
      int? where__id__more_than,
      int? where__id__less_than});
}

/// @nodoc
class _$PaginationParamsCopyWithImpl<$Res, $Val extends PaginationParams>
    implements $PaginationParamsCopyWith<$Res> {
  _$PaginationParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order__createdAt = freezed,
    Object? take = freezed,
    Object? where__id__more_than = freezed,
    Object? where__id__less_than = freezed,
  }) {
    return _then(_value.copyWith(
      order__createdAt: freezed == order__createdAt
          ? _value.order__createdAt
          : order__createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      take: freezed == take
          ? _value.take
          : take // ignore: cast_nullable_to_non_nullable
              as int?,
      where__id__more_than: freezed == where__id__more_than
          ? _value.where__id__more_than
          : where__id__more_than // ignore: cast_nullable_to_non_nullable
              as int?,
      where__id__less_than: freezed == where__id__less_than
          ? _value.where__id__less_than
          : where__id__less_than // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PaginationParamsImplCopyWith<$Res>
    implements $PaginationParamsCopyWith<$Res> {
  factory _$$PaginationParamsImplCopyWith(_$PaginationParamsImpl value,
          $Res Function(_$PaginationParamsImpl) then) =
      __$$PaginationParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? order__createdAt,
      int? take,
      int? where__id__more_than,
      int? where__id__less_than});
}

/// @nodoc
class __$$PaginationParamsImplCopyWithImpl<$Res>
    extends _$PaginationParamsCopyWithImpl<$Res, _$PaginationParamsImpl>
    implements _$$PaginationParamsImplCopyWith<$Res> {
  __$$PaginationParamsImplCopyWithImpl(_$PaginationParamsImpl _value,
      $Res Function(_$PaginationParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order__createdAt = freezed,
    Object? take = freezed,
    Object? where__id__more_than = freezed,
    Object? where__id__less_than = freezed,
  }) {
    return _then(_$PaginationParamsImpl(
      order__createdAt: freezed == order__createdAt
          ? _value.order__createdAt
          : order__createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      take: freezed == take
          ? _value.take
          : take // ignore: cast_nullable_to_non_nullable
              as int?,
      where__id__more_than: freezed == where__id__more_than
          ? _value.where__id__more_than
          : where__id__more_than // ignore: cast_nullable_to_non_nullable
              as int?,
      where__id__less_than: freezed == where__id__less_than
          ? _value.where__id__less_than
          : where__id__less_than // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PaginationParamsImpl implements _PaginationParams {
  const _$PaginationParamsImpl(
      {this.order__createdAt,
      this.take,
      this.where__id__more_than,
      this.where__id__less_than});

  factory _$PaginationParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PaginationParamsImplFromJson(json);

  @override
  final String? order__createdAt;
  @override
  final int? take;
  @override
  final int? where__id__more_than;
  @override
  final int? where__id__less_than;

  @override
  String toString() {
    return 'PaginationParams(order__createdAt: $order__createdAt, take: $take, where__id__more_than: $where__id__more_than, where__id__less_than: $where__id__less_than)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PaginationParamsImpl &&
            (identical(other.order__createdAt, order__createdAt) ||
                other.order__createdAt == order__createdAt) &&
            (identical(other.take, take) || other.take == take) &&
            (identical(other.where__id__more_than, where__id__more_than) ||
                other.where__id__more_than == where__id__more_than) &&
            (identical(other.where__id__less_than, where__id__less_than) ||
                other.where__id__less_than == where__id__less_than));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, order__createdAt, take,
      where__id__more_than, where__id__less_than);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PaginationParamsImplCopyWith<_$PaginationParamsImpl> get copyWith =>
      __$$PaginationParamsImplCopyWithImpl<_$PaginationParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PaginationParamsImplToJson(
      this,
    );
  }
}

abstract class _PaginationParams implements PaginationParams {
  const factory _PaginationParams(
      {final String? order__createdAt,
      final int? take,
      final int? where__id__more_than,
      final int? where__id__less_than}) = _$PaginationParamsImpl;

  factory _PaginationParams.fromJson(Map<String, dynamic> json) =
      _$PaginationParamsImpl.fromJson;

  @override
  String? get order__createdAt;
  @override
  int? get take;
  @override
  int? get where__id__more_than;
  @override
  int? get where__id__less_than;
  @override
  @JsonKey(ignore: true)
  _$$PaginationParamsImplCopyWith<_$PaginationParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
