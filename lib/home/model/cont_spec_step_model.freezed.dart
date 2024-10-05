// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cont_spec_step_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContSpecStepModel _$ContSpecStepModelFromJson(Map<String, dynamic> json) {
  return _ContSpecStepModel.fromJson(json);
}

/// @nodoc
mixin _$ContSpecStepModel {
  double get value => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  bool get useYn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContSpecStepModelCopyWith<ContSpecStepModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContSpecStepModelCopyWith<$Res> {
  factory $ContSpecStepModelCopyWith(
          ContSpecStepModel value, $Res Function(ContSpecStepModel) then) =
      _$ContSpecStepModelCopyWithImpl<$Res, ContSpecStepModel>;
  @useResult
  $Res call({double value, String label, bool useYn});
}

/// @nodoc
class _$ContSpecStepModelCopyWithImpl<$Res, $Val extends ContSpecStepModel>
    implements $ContSpecStepModelCopyWith<$Res> {
  _$ContSpecStepModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? label = null,
    Object? useYn = null,
  }) {
    return _then(_value.copyWith(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      useYn: null == useYn
          ? _value.useYn
          : useYn // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContSpecStepModelImplCopyWith<$Res>
    implements $ContSpecStepModelCopyWith<$Res> {
  factory _$$ContSpecStepModelImplCopyWith(_$ContSpecStepModelImpl value,
          $Res Function(_$ContSpecStepModelImpl) then) =
      __$$ContSpecStepModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double value, String label, bool useYn});
}

/// @nodoc
class __$$ContSpecStepModelImplCopyWithImpl<$Res>
    extends _$ContSpecStepModelCopyWithImpl<$Res, _$ContSpecStepModelImpl>
    implements _$$ContSpecStepModelImplCopyWith<$Res> {
  __$$ContSpecStepModelImplCopyWithImpl(_$ContSpecStepModelImpl _value,
      $Res Function(_$ContSpecStepModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = null,
    Object? label = null,
    Object? useYn = null,
  }) {
    return _then(_$ContSpecStepModelImpl(
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      useYn: null == useYn
          ? _value.useYn
          : useYn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContSpecStepModelImpl implements _ContSpecStepModel {
  const _$ContSpecStepModelImpl(
      {required this.value, required this.label, required this.useYn});

  factory _$ContSpecStepModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContSpecStepModelImplFromJson(json);

  @override
  final double value;
  @override
  final String label;
  @override
  final bool useYn;

  @override
  String toString() {
    return 'ContSpecStepModel(value: $value, label: $label, useYn: $useYn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContSpecStepModelImpl &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.useYn, useYn) || other.useYn == useYn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, label, useYn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContSpecStepModelImplCopyWith<_$ContSpecStepModelImpl> get copyWith =>
      __$$ContSpecStepModelImplCopyWithImpl<_$ContSpecStepModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContSpecStepModelImplToJson(
      this,
    );
  }
}

abstract class _ContSpecStepModel implements ContSpecStepModel {
  const factory _ContSpecStepModel(
      {required final double value,
      required final String label,
      required final bool useYn}) = _$ContSpecStepModelImpl;

  factory _ContSpecStepModel.fromJson(Map<String, dynamic> json) =
      _$ContSpecStepModelImpl.fromJson;

  @override
  double get value;
  @override
  String get label;
  @override
  bool get useYn;
  @override
  @JsonKey(ignore: true)
  _$$ContSpecStepModelImplCopyWith<_$ContSpecStepModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
