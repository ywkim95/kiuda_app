// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_custom_value_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserCustomValueModel _$UserCustomValueModelFromJson(Map<String, dynamic> json) {
  return _UserCustomValueModel.fromJson(json);
}

/// @nodoc
mixin _$UserCustomValueModel {
  int get id => throw _privateConstructorUsedError;
  int get manualValue => throw _privateConstructorUsedError;
  int get gab => throw _privateConstructorUsedError;
  String get memo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCustomValueModelCopyWith<UserCustomValueModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCustomValueModelCopyWith<$Res> {
  factory $UserCustomValueModelCopyWith(UserCustomValueModel value,
          $Res Function(UserCustomValueModel) then) =
      _$UserCustomValueModelCopyWithImpl<$Res, UserCustomValueModel>;
  @useResult
  $Res call({int id, int manualValue, int gab, String memo});
}

/// @nodoc
class _$UserCustomValueModelCopyWithImpl<$Res,
        $Val extends UserCustomValueModel>
    implements $UserCustomValueModelCopyWith<$Res> {
  _$UserCustomValueModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? manualValue = null,
    Object? gab = null,
    Object? memo = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      manualValue: null == manualValue
          ? _value.manualValue
          : manualValue // ignore: cast_nullable_to_non_nullable
              as int,
      gab: null == gab
          ? _value.gab
          : gab // ignore: cast_nullable_to_non_nullable
              as int,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserCustomValueModelImplCopyWith<$Res>
    implements $UserCustomValueModelCopyWith<$Res> {
  factory _$$UserCustomValueModelImplCopyWith(_$UserCustomValueModelImpl value,
          $Res Function(_$UserCustomValueModelImpl) then) =
      __$$UserCustomValueModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, int manualValue, int gab, String memo});
}

/// @nodoc
class __$$UserCustomValueModelImplCopyWithImpl<$Res>
    extends _$UserCustomValueModelCopyWithImpl<$Res, _$UserCustomValueModelImpl>
    implements _$$UserCustomValueModelImplCopyWith<$Res> {
  __$$UserCustomValueModelImplCopyWithImpl(_$UserCustomValueModelImpl _value,
      $Res Function(_$UserCustomValueModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? manualValue = null,
    Object? gab = null,
    Object? memo = null,
  }) {
    return _then(_$UserCustomValueModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      manualValue: null == manualValue
          ? _value.manualValue
          : manualValue // ignore: cast_nullable_to_non_nullable
              as int,
      gab: null == gab
          ? _value.gab
          : gab // ignore: cast_nullable_to_non_nullable
              as int,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserCustomValueModelImpl implements _UserCustomValueModel {
  const _$UserCustomValueModelImpl(
      {required this.id,
      required this.manualValue,
      required this.gab,
      required this.memo});

  factory _$UserCustomValueModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserCustomValueModelImplFromJson(json);

  @override
  final int id;
  @override
  final int manualValue;
  @override
  final int gab;
  @override
  final String memo;

  @override
  String toString() {
    return 'UserCustomValueModel(id: $id, manualValue: $manualValue, gab: $gab, memo: $memo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCustomValueModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.manualValue, manualValue) ||
                other.manualValue == manualValue) &&
            (identical(other.gab, gab) || other.gab == gab) &&
            (identical(other.memo, memo) || other.memo == memo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, manualValue, gab, memo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCustomValueModelImplCopyWith<_$UserCustomValueModelImpl>
      get copyWith =>
          __$$UserCustomValueModelImplCopyWithImpl<_$UserCustomValueModelImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCustomValueModelImplToJson(
      this,
    );
  }
}

abstract class _UserCustomValueModel implements UserCustomValueModel {
  const factory _UserCustomValueModel(
      {required final int id,
      required final int manualValue,
      required final int gab,
      required final String memo}) = _$UserCustomValueModelImpl;

  factory _UserCustomValueModel.fromJson(Map<String, dynamic> json) =
      _$UserCustomValueModelImpl.fromJson;

  @override
  int get id;
  @override
  int get manualValue;
  @override
  int get gab;
  @override
  String get memo;
  @override
  @JsonKey(ignore: true)
  _$$UserCustomValueModelImplCopyWith<_$UserCustomValueModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
