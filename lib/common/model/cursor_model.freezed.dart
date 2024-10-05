// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cursor_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CursorModel _$CursorModelFromJson(Map<String, dynamic> json) {
  return _CursorModel.fromJson(json);
}

/// @nodoc
mixin _$CursorModel {
  int? get after => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CursorModelCopyWith<CursorModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CursorModelCopyWith<$Res> {
  factory $CursorModelCopyWith(
          CursorModel value, $Res Function(CursorModel) then) =
      _$CursorModelCopyWithImpl<$Res, CursorModel>;
  @useResult
  $Res call({int? after});
}

/// @nodoc
class _$CursorModelCopyWithImpl<$Res, $Val extends CursorModel>
    implements $CursorModelCopyWith<$Res> {
  _$CursorModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? after = freezed,
  }) {
    return _then(_value.copyWith(
      after: freezed == after
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CursorModelImplCopyWith<$Res>
    implements $CursorModelCopyWith<$Res> {
  factory _$$CursorModelImplCopyWith(
          _$CursorModelImpl value, $Res Function(_$CursorModelImpl) then) =
      __$$CursorModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? after});
}

/// @nodoc
class __$$CursorModelImplCopyWithImpl<$Res>
    extends _$CursorModelCopyWithImpl<$Res, _$CursorModelImpl>
    implements _$$CursorModelImplCopyWith<$Res> {
  __$$CursorModelImplCopyWithImpl(
      _$CursorModelImpl _value, $Res Function(_$CursorModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? after = freezed,
  }) {
    return _then(_$CursorModelImpl(
      after: freezed == after
          ? _value.after
          : after // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CursorModelImpl implements _CursorModel {
  const _$CursorModelImpl({this.after});

  factory _$CursorModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CursorModelImplFromJson(json);

  @override
  final int? after;

  @override
  String toString() {
    return 'CursorModel(after: $after)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CursorModelImpl &&
            (identical(other.after, after) || other.after == after));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, after);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CursorModelImplCopyWith<_$CursorModelImpl> get copyWith =>
      __$$CursorModelImplCopyWithImpl<_$CursorModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CursorModelImplToJson(
      this,
    );
  }
}

abstract class _CursorModel implements CursorModel {
  const factory _CursorModel({final int? after}) = _$CursorModelImpl;

  factory _CursorModel.fromJson(Map<String, dynamic> json) =
      _$CursorModelImpl.fromJson;

  @override
  int? get after;
  @override
  @JsonKey(ignore: true)
  _$$CursorModelImplCopyWith<_$CursorModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
