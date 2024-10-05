// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sensor_spec_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SensorSpecModel _$SensorSpecModelFromJson(Map<String, dynamic> json) {
  return _SensorSpecModel.fromJson(json);
}

/// @nodoc
mixin _$SensorSpecModel {
  String get name => throw _privateConstructorUsedError;
  String? get varName => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  String get manufacturer => throw _privateConstructorUsedError;
  int? get decimalPlaces => throw _privateConstructorUsedError;
  String? get graphMode => throw _privateConstructorUsedError;
  bool get useYn => throw _privateConstructorUsedError;
  String get unit => throw _privateConstructorUsedError;
  int get minValue => throw _privateConstructorUsedError;
  int get maxValue => throw _privateConstructorUsedError;
  int get lowWarningStart => throw _privateConstructorUsedError;
  int get lowWarningEnd => throw _privateConstructorUsedError;
  int get stableStart => throw _privateConstructorUsedError;
  int get stableEnd => throw _privateConstructorUsedError;
  int get highWarningStart => throw _privateConstructorUsedError;
  int get highWarningEnd => throw _privateConstructorUsedError;
  int get dangerStart => throw _privateConstructorUsedError;
  int get dangerEnd => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SensorSpecModelCopyWith<SensorSpecModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SensorSpecModelCopyWith<$Res> {
  factory $SensorSpecModelCopyWith(
          SensorSpecModel value, $Res Function(SensorSpecModel) then) =
      _$SensorSpecModelCopyWithImpl<$Res, SensorSpecModel>;
  @useResult
  $Res call(
      {String name,
      String? varName,
      String? description,
      String model,
      String manufacturer,
      int? decimalPlaces,
      String? graphMode,
      bool useYn,
      String unit,
      int minValue,
      int maxValue,
      int lowWarningStart,
      int lowWarningEnd,
      int stableStart,
      int stableEnd,
      int highWarningStart,
      int highWarningEnd,
      int dangerStart,
      int dangerEnd});
}

/// @nodoc
class _$SensorSpecModelCopyWithImpl<$Res, $Val extends SensorSpecModel>
    implements $SensorSpecModelCopyWith<$Res> {
  _$SensorSpecModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? varName = freezed,
    Object? description = freezed,
    Object? model = null,
    Object? manufacturer = null,
    Object? decimalPlaces = freezed,
    Object? graphMode = freezed,
    Object? useYn = null,
    Object? unit = null,
    Object? minValue = null,
    Object? maxValue = null,
    Object? lowWarningStart = null,
    Object? lowWarningEnd = null,
    Object? stableStart = null,
    Object? stableEnd = null,
    Object? highWarningStart = null,
    Object? highWarningEnd = null,
    Object? dangerStart = null,
    Object? dangerEnd = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      varName: freezed == varName
          ? _value.varName
          : varName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturer: null == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      decimalPlaces: freezed == decimalPlaces
          ? _value.decimalPlaces
          : decimalPlaces // ignore: cast_nullable_to_non_nullable
              as int?,
      graphMode: freezed == graphMode
          ? _value.graphMode
          : graphMode // ignore: cast_nullable_to_non_nullable
              as String?,
      useYn: null == useYn
          ? _value.useYn
          : useYn // ignore: cast_nullable_to_non_nullable
              as bool,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      minValue: null == minValue
          ? _value.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as int,
      maxValue: null == maxValue
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as int,
      lowWarningStart: null == lowWarningStart
          ? _value.lowWarningStart
          : lowWarningStart // ignore: cast_nullable_to_non_nullable
              as int,
      lowWarningEnd: null == lowWarningEnd
          ? _value.lowWarningEnd
          : lowWarningEnd // ignore: cast_nullable_to_non_nullable
              as int,
      stableStart: null == stableStart
          ? _value.stableStart
          : stableStart // ignore: cast_nullable_to_non_nullable
              as int,
      stableEnd: null == stableEnd
          ? _value.stableEnd
          : stableEnd // ignore: cast_nullable_to_non_nullable
              as int,
      highWarningStart: null == highWarningStart
          ? _value.highWarningStart
          : highWarningStart // ignore: cast_nullable_to_non_nullable
              as int,
      highWarningEnd: null == highWarningEnd
          ? _value.highWarningEnd
          : highWarningEnd // ignore: cast_nullable_to_non_nullable
              as int,
      dangerStart: null == dangerStart
          ? _value.dangerStart
          : dangerStart // ignore: cast_nullable_to_non_nullable
              as int,
      dangerEnd: null == dangerEnd
          ? _value.dangerEnd
          : dangerEnd // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SensorSpecModelImplCopyWith<$Res>
    implements $SensorSpecModelCopyWith<$Res> {
  factory _$$SensorSpecModelImplCopyWith(_$SensorSpecModelImpl value,
          $Res Function(_$SensorSpecModelImpl) then) =
      __$$SensorSpecModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String? varName,
      String? description,
      String model,
      String manufacturer,
      int? decimalPlaces,
      String? graphMode,
      bool useYn,
      String unit,
      int minValue,
      int maxValue,
      int lowWarningStart,
      int lowWarningEnd,
      int stableStart,
      int stableEnd,
      int highWarningStart,
      int highWarningEnd,
      int dangerStart,
      int dangerEnd});
}

/// @nodoc
class __$$SensorSpecModelImplCopyWithImpl<$Res>
    extends _$SensorSpecModelCopyWithImpl<$Res, _$SensorSpecModelImpl>
    implements _$$SensorSpecModelImplCopyWith<$Res> {
  __$$SensorSpecModelImplCopyWithImpl(
      _$SensorSpecModelImpl _value, $Res Function(_$SensorSpecModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? varName = freezed,
    Object? description = freezed,
    Object? model = null,
    Object? manufacturer = null,
    Object? decimalPlaces = freezed,
    Object? graphMode = freezed,
    Object? useYn = null,
    Object? unit = null,
    Object? minValue = null,
    Object? maxValue = null,
    Object? lowWarningStart = null,
    Object? lowWarningEnd = null,
    Object? stableStart = null,
    Object? stableEnd = null,
    Object? highWarningStart = null,
    Object? highWarningEnd = null,
    Object? dangerStart = null,
    Object? dangerEnd = null,
  }) {
    return _then(_$SensorSpecModelImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      varName: freezed == varName
          ? _value.varName
          : varName // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      model: null == model
          ? _value.model
          : model // ignore: cast_nullable_to_non_nullable
              as String,
      manufacturer: null == manufacturer
          ? _value.manufacturer
          : manufacturer // ignore: cast_nullable_to_non_nullable
              as String,
      decimalPlaces: freezed == decimalPlaces
          ? _value.decimalPlaces
          : decimalPlaces // ignore: cast_nullable_to_non_nullable
              as int?,
      graphMode: freezed == graphMode
          ? _value.graphMode
          : graphMode // ignore: cast_nullable_to_non_nullable
              as String?,
      useYn: null == useYn
          ? _value.useYn
          : useYn // ignore: cast_nullable_to_non_nullable
              as bool,
      unit: null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as String,
      minValue: null == minValue
          ? _value.minValue
          : minValue // ignore: cast_nullable_to_non_nullable
              as int,
      maxValue: null == maxValue
          ? _value.maxValue
          : maxValue // ignore: cast_nullable_to_non_nullable
              as int,
      lowWarningStart: null == lowWarningStart
          ? _value.lowWarningStart
          : lowWarningStart // ignore: cast_nullable_to_non_nullable
              as int,
      lowWarningEnd: null == lowWarningEnd
          ? _value.lowWarningEnd
          : lowWarningEnd // ignore: cast_nullable_to_non_nullable
              as int,
      stableStart: null == stableStart
          ? _value.stableStart
          : stableStart // ignore: cast_nullable_to_non_nullable
              as int,
      stableEnd: null == stableEnd
          ? _value.stableEnd
          : stableEnd // ignore: cast_nullable_to_non_nullable
              as int,
      highWarningStart: null == highWarningStart
          ? _value.highWarningStart
          : highWarningStart // ignore: cast_nullable_to_non_nullable
              as int,
      highWarningEnd: null == highWarningEnd
          ? _value.highWarningEnd
          : highWarningEnd // ignore: cast_nullable_to_non_nullable
              as int,
      dangerStart: null == dangerStart
          ? _value.dangerStart
          : dangerStart // ignore: cast_nullable_to_non_nullable
              as int,
      dangerEnd: null == dangerEnd
          ? _value.dangerEnd
          : dangerEnd // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SensorSpecModelImpl implements _SensorSpecModel {
  const _$SensorSpecModelImpl(
      {required this.name,
      this.varName,
      this.description,
      required this.model,
      required this.manufacturer,
      this.decimalPlaces,
      this.graphMode,
      required this.useYn,
      required this.unit,
      required this.minValue,
      required this.maxValue,
      required this.lowWarningStart,
      required this.lowWarningEnd,
      required this.stableStart,
      required this.stableEnd,
      required this.highWarningStart,
      required this.highWarningEnd,
      required this.dangerStart,
      required this.dangerEnd});

  factory _$SensorSpecModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SensorSpecModelImplFromJson(json);

  @override
  final String name;
  @override
  final String? varName;
  @override
  final String? description;
  @override
  final String model;
  @override
  final String manufacturer;
  @override
  final int? decimalPlaces;
  @override
  final String? graphMode;
  @override
  final bool useYn;
  @override
  final String unit;
  @override
  final int minValue;
  @override
  final int maxValue;
  @override
  final int lowWarningStart;
  @override
  final int lowWarningEnd;
  @override
  final int stableStart;
  @override
  final int stableEnd;
  @override
  final int highWarningStart;
  @override
  final int highWarningEnd;
  @override
  final int dangerStart;
  @override
  final int dangerEnd;

  @override
  String toString() {
    return 'SensorSpecModel(name: $name, varName: $varName, description: $description, model: $model, manufacturer: $manufacturer, decimalPlaces: $decimalPlaces, graphMode: $graphMode, useYn: $useYn, unit: $unit, minValue: $minValue, maxValue: $maxValue, lowWarningStart: $lowWarningStart, lowWarningEnd: $lowWarningEnd, stableStart: $stableStart, stableEnd: $stableEnd, highWarningStart: $highWarningStart, highWarningEnd: $highWarningEnd, dangerStart: $dangerStart, dangerEnd: $dangerEnd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SensorSpecModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.varName, varName) || other.varName == varName) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.manufacturer, manufacturer) ||
                other.manufacturer == manufacturer) &&
            (identical(other.decimalPlaces, decimalPlaces) ||
                other.decimalPlaces == decimalPlaces) &&
            (identical(other.graphMode, graphMode) ||
                other.graphMode == graphMode) &&
            (identical(other.useYn, useYn) || other.useYn == useYn) &&
            (identical(other.unit, unit) || other.unit == unit) &&
            (identical(other.minValue, minValue) ||
                other.minValue == minValue) &&
            (identical(other.maxValue, maxValue) ||
                other.maxValue == maxValue) &&
            (identical(other.lowWarningStart, lowWarningStart) ||
                other.lowWarningStart == lowWarningStart) &&
            (identical(other.lowWarningEnd, lowWarningEnd) ||
                other.lowWarningEnd == lowWarningEnd) &&
            (identical(other.stableStart, stableStart) ||
                other.stableStart == stableStart) &&
            (identical(other.stableEnd, stableEnd) ||
                other.stableEnd == stableEnd) &&
            (identical(other.highWarningStart, highWarningStart) ||
                other.highWarningStart == highWarningStart) &&
            (identical(other.highWarningEnd, highWarningEnd) ||
                other.highWarningEnd == highWarningEnd) &&
            (identical(other.dangerStart, dangerStart) ||
                other.dangerStart == dangerStart) &&
            (identical(other.dangerEnd, dangerEnd) ||
                other.dangerEnd == dangerEnd));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        name,
        varName,
        description,
        model,
        manufacturer,
        decimalPlaces,
        graphMode,
        useYn,
        unit,
        minValue,
        maxValue,
        lowWarningStart,
        lowWarningEnd,
        stableStart,
        stableEnd,
        highWarningStart,
        highWarningEnd,
        dangerStart,
        dangerEnd
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SensorSpecModelImplCopyWith<_$SensorSpecModelImpl> get copyWith =>
      __$$SensorSpecModelImplCopyWithImpl<_$SensorSpecModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SensorSpecModelImplToJson(
      this,
    );
  }
}

abstract class _SensorSpecModel implements SensorSpecModel {
  const factory _SensorSpecModel(
      {required final String name,
      final String? varName,
      final String? description,
      required final String model,
      required final String manufacturer,
      final int? decimalPlaces,
      final String? graphMode,
      required final bool useYn,
      required final String unit,
      required final int minValue,
      required final int maxValue,
      required final int lowWarningStart,
      required final int lowWarningEnd,
      required final int stableStart,
      required final int stableEnd,
      required final int highWarningStart,
      required final int highWarningEnd,
      required final int dangerStart,
      required final int dangerEnd}) = _$SensorSpecModelImpl;

  factory _SensorSpecModel.fromJson(Map<String, dynamic> json) =
      _$SensorSpecModelImpl.fromJson;

  @override
  String get name;
  @override
  String? get varName;
  @override
  String? get description;
  @override
  String get model;
  @override
  String get manufacturer;
  @override
  int? get decimalPlaces;
  @override
  String? get graphMode;
  @override
  bool get useYn;
  @override
  String get unit;
  @override
  int get minValue;
  @override
  int get maxValue;
  @override
  int get lowWarningStart;
  @override
  int get lowWarningEnd;
  @override
  int get stableStart;
  @override
  int get stableEnd;
  @override
  int get highWarningStart;
  @override
  int get highWarningEnd;
  @override
  int get dangerStart;
  @override
  int get dangerEnd;
  @override
  @JsonKey(ignore: true)
  _$$SensorSpecModelImplCopyWith<_$SensorSpecModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
