// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cont_spec_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContSpecModel _$ContSpecModelFromJson(Map<String, dynamic> json) {
  return _ContSpecModel.fromJson(json);
}

/// @nodoc
mixin _$ContSpecModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get varName => throw _privateConstructorUsedError;
  ControllerSpecEnum get controllerType => throw _privateConstructorUsedError;
  List<ContSpecStepModel>? get specificationSteps =>
      throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  double get min => throw _privateConstructorUsedError;
  double get max => throw _privateConstructorUsedError;
  double get step => throw _privateConstructorUsedError;
  bool get useYn => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContSpecModelCopyWith<ContSpecModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContSpecModelCopyWith<$Res> {
  factory $ContSpecModelCopyWith(
          ContSpecModel value, $Res Function(ContSpecModel) then) =
      _$ContSpecModelCopyWithImpl<$Res, ContSpecModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String? varName,
      ControllerSpecEnum controllerType,
      List<ContSpecStepModel>? specificationSteps,
      String? description,
      String unit,
      double min,
      double max,
      double step,
      bool useYn});
}

/// @nodoc
class _$ContSpecModelCopyWithImpl<$Res, $Val extends ContSpecModel>
    implements $ContSpecModelCopyWith<$Res> {
  _$ContSpecModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? varName = freezed,
    Object? controllerType = null,
    Object? specificationSteps = freezed,
    Object? description = freezed,
    Object? unit = null,
    Object? min = null,
    Object? max = null,
    Object? step = null,
    Object? useYn = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      varName: freezed == varName
          ? _value.varName
          : varName // ignore: cast_nullable_to_non_nullable
              as String?,
      controllerType: null == controllerType
          ? _value.controllerType
          : controllerType // ignore: cast_nullable_to_non_nullable
              as ControllerSpecEnum,
      specificationSteps: freezed == specificationSteps
          ? _value.specificationSteps
          : specificationSteps // ignore: cast_nullable_to_non_nullable
              as List<ContSpecStepModel>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as double,
      useYn: null == useYn
          ? _value.useYn
          : useYn // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContSpecModelImplCopyWith<$Res>
    implements $ContSpecModelCopyWith<$Res> {
  factory _$$ContSpecModelImplCopyWith(
          _$ContSpecModelImpl value, $Res Function(_$ContSpecModelImpl) then) =
      __$$ContSpecModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? varName,
      ControllerSpecEnum controllerType,
      List<ContSpecStepModel>? specificationSteps,
      String? description,
      String unit,
      double min,
      double max,
      double step,
      bool useYn});
}

/// @nodoc
class __$$ContSpecModelImplCopyWithImpl<$Res>
    extends _$ContSpecModelCopyWithImpl<$Res, _$ContSpecModelImpl>
    implements _$$ContSpecModelImplCopyWith<$Res> {
  __$$ContSpecModelImplCopyWithImpl(
      _$ContSpecModelImpl _value, $Res Function(_$ContSpecModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? varName = freezed,
    Object? controllerType = null,
    Object? specificationSteps = freezed,
    Object? description = freezed,
    Object? unit = null,
    Object? min = null,
    Object? max = null,
    Object? step = null,
    Object? useYn = null,
  }) {
    return _then(_$ContSpecModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      varName: freezed == varName
          ? _value.varName
          : varName // ignore: cast_nullable_to_non_nullable
              as String?,
      controllerType: null == controllerType
          ? _value.controllerType
          : controllerType // ignore: cast_nullable_to_non_nullable
              as ControllerSpecEnum,
      specificationSteps: freezed == specificationSteps
          ? _value._specificationSteps
          : specificationSteps // ignore: cast_nullable_to_non_nullable
              as List<ContSpecStepModel>?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as double,
      useYn: null == useYn
          ? _value.useYn
          : useYn // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContSpecModelImpl implements _ContSpecModel {
  const _$ContSpecModelImpl(
      {required this.id,
      required this.name,
      this.varName,
      required this.controllerType,
      final List<ContSpecStepModel>? specificationSteps,
      this.description,
      required this.unit,
      required this.min,
      required this.max,
      required this.step,
      required this.useYn})
      : _specificationSteps = specificationSteps;

  factory _$ContSpecModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContSpecModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? varName;
  @override
  final ControllerSpecEnum controllerType;
  final List<ContSpecStepModel>? _specificationSteps;
  @override
  List<ContSpecStepModel>? get specificationSteps {
    final value = _specificationSteps;
    if (value == null) return null;
    if (_specificationSteps is EqualUnmodifiableListView)
      return _specificationSteps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? description;
  @override
  final String unit;
  @override
  final double min;
  @override
  final double max;
  @override
  final double step;
  @override
  final bool useYn;

  @override
  String toString() {
    return 'ContSpecModel(id: $id, name: $name, varName: $varName, controllerType: $controllerType, specificationSteps: $specificationSteps, description: $description, unit: $unit, min: $min, max: $max, step: $step, useYn: $useYn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContSpecModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.varName, varName) || other.varName == varName) &&
            (identical(other.controllerType, controllerType) ||
                other.controllerType == controllerType) &&
            const DeepCollectionEquality()
                .equals(other._specificationSteps, _specificationSteps) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.useYn, useYn) || other.useYn == useYn));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      varName,
      controllerType,
      const DeepCollectionEquality().hash(_specificationSteps),
      description,
      unit,
      min,
      max,
      step,
      useYn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContSpecModelImplCopyWith<_$ContSpecModelImpl> get copyWith =>
      __$$ContSpecModelImplCopyWithImpl<_$ContSpecModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContSpecModelImplToJson(
      this,
    );
  }
}

abstract class _ContSpecModel implements ContSpecModel {
  const factory _ContSpecModel(
      {required final int id,
      required final String name,
      final String? varName,
      required final ControllerSpecEnum controllerType,
      final List<ContSpecStepModel>? specificationSteps,
      final String? description,
      required final String unit,
      required final double min,
      required final double max,
      required final double step,
      required final bool useYn}) = _$ContSpecModelImpl;

  factory _ContSpecModel.fromJson(Map<String, dynamic> json) =
      _$ContSpecModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get varName;
  @override
  ControllerSpecEnum get controllerType;
  @override
  List<ContSpecStepModel>? get specificationSteps;
  @override
  String? get description;
  @override
  String get unit;
  @override
  double get min;
  @override
  double get max;
  @override
  double get step;
  @override
  bool get useYn;
  @override
  @JsonKey(ignore: true)
  _$$ContSpecModelImplCopyWith<_$ContSpecModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
