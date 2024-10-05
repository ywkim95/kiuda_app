// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sensor_device_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SensorDeviceModel _$SensorDeviceModelFromJson(Map<String, dynamic> json) {
  return _SensorDeviceModel.fromJson(json);
}

/// @nodoc
mixin _$SensorDeviceModel {
  String? get name => throw _privateConstructorUsedError;
  int get id => throw _privateConstructorUsedError;
  double get correctionValue => throw _privateConstructorUsedError;
  double get customStableStart => throw _privateConstructorUsedError;
  double get customStableEnd => throw _privateConstructorUsedError;
  SensorSpecModel? get spec => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SensorDeviceModelCopyWith<SensorDeviceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SensorDeviceModelCopyWith<$Res> {
  factory $SensorDeviceModelCopyWith(
          SensorDeviceModel value, $Res Function(SensorDeviceModel) then) =
      _$SensorDeviceModelCopyWithImpl<$Res, SensorDeviceModel>;
  @useResult
  $Res call(
      {String? name,
      int id,
      double correctionValue,
      double customStableStart,
      double customStableEnd,
      SensorSpecModel? spec});

  $SensorSpecModelCopyWith<$Res>? get spec;
}

/// @nodoc
class _$SensorDeviceModelCopyWithImpl<$Res, $Val extends SensorDeviceModel>
    implements $SensorDeviceModelCopyWith<$Res> {
  _$SensorDeviceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = null,
    Object? correctionValue = null,
    Object? customStableStart = null,
    Object? customStableEnd = null,
    Object? spec = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      correctionValue: null == correctionValue
          ? _value.correctionValue
          : correctionValue // ignore: cast_nullable_to_non_nullable
              as double,
      customStableStart: null == customStableStart
          ? _value.customStableStart
          : customStableStart // ignore: cast_nullable_to_non_nullable
              as double,
      customStableEnd: null == customStableEnd
          ? _value.customStableEnd
          : customStableEnd // ignore: cast_nullable_to_non_nullable
              as double,
      spec: freezed == spec
          ? _value.spec
          : spec // ignore: cast_nullable_to_non_nullable
              as SensorSpecModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SensorSpecModelCopyWith<$Res>? get spec {
    if (_value.spec == null) {
      return null;
    }

    return $SensorSpecModelCopyWith<$Res>(_value.spec!, (value) {
      return _then(_value.copyWith(spec: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SensorDeviceModelImplCopyWith<$Res>
    implements $SensorDeviceModelCopyWith<$Res> {
  factory _$$SensorDeviceModelImplCopyWith(_$SensorDeviceModelImpl value,
          $Res Function(_$SensorDeviceModelImpl) then) =
      __$$SensorDeviceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      int id,
      double correctionValue,
      double customStableStart,
      double customStableEnd,
      SensorSpecModel? spec});

  @override
  $SensorSpecModelCopyWith<$Res>? get spec;
}

/// @nodoc
class __$$SensorDeviceModelImplCopyWithImpl<$Res>
    extends _$SensorDeviceModelCopyWithImpl<$Res, _$SensorDeviceModelImpl>
    implements _$$SensorDeviceModelImplCopyWith<$Res> {
  __$$SensorDeviceModelImplCopyWithImpl(_$SensorDeviceModelImpl _value,
      $Res Function(_$SensorDeviceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? id = null,
    Object? correctionValue = null,
    Object? customStableStart = null,
    Object? customStableEnd = null,
    Object? spec = freezed,
  }) {
    return _then(_$SensorDeviceModelImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      correctionValue: null == correctionValue
          ? _value.correctionValue
          : correctionValue // ignore: cast_nullable_to_non_nullable
              as double,
      customStableStart: null == customStableStart
          ? _value.customStableStart
          : customStableStart // ignore: cast_nullable_to_non_nullable
              as double,
      customStableEnd: null == customStableEnd
          ? _value.customStableEnd
          : customStableEnd // ignore: cast_nullable_to_non_nullable
              as double,
      spec: freezed == spec
          ? _value.spec
          : spec // ignore: cast_nullable_to_non_nullable
              as SensorSpecModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SensorDeviceModelImpl implements _SensorDeviceModel {
  const _$SensorDeviceModelImpl(
      {this.name,
      required this.id,
      required this.correctionValue,
      required this.customStableStart,
      required this.customStableEnd,
      this.spec});

  factory _$SensorDeviceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SensorDeviceModelImplFromJson(json);

  @override
  final String? name;
  @override
  final int id;
  @override
  final double correctionValue;
  @override
  final double customStableStart;
  @override
  final double customStableEnd;
  @override
  final SensorSpecModel? spec;

  @override
  String toString() {
    return 'SensorDeviceModel(name: $name, id: $id, correctionValue: $correctionValue, customStableStart: $customStableStart, customStableEnd: $customStableEnd, spec: $spec)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SensorDeviceModelImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.correctionValue, correctionValue) ||
                other.correctionValue == correctionValue) &&
            (identical(other.customStableStart, customStableStart) ||
                other.customStableStart == customStableStart) &&
            (identical(other.customStableEnd, customStableEnd) ||
                other.customStableEnd == customStableEnd) &&
            (identical(other.spec, spec) || other.spec == spec));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, id, correctionValue,
      customStableStart, customStableEnd, spec);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SensorDeviceModelImplCopyWith<_$SensorDeviceModelImpl> get copyWith =>
      __$$SensorDeviceModelImplCopyWithImpl<_$SensorDeviceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SensorDeviceModelImplToJson(
      this,
    );
  }
}

abstract class _SensorDeviceModel implements SensorDeviceModel {
  const factory _SensorDeviceModel(
      {final String? name,
      required final int id,
      required final double correctionValue,
      required final double customStableStart,
      required final double customStableEnd,
      final SensorSpecModel? spec}) = _$SensorDeviceModelImpl;

  factory _SensorDeviceModel.fromJson(Map<String, dynamic> json) =
      _$SensorDeviceModelImpl.fromJson;

  @override
  String? get name;
  @override
  int get id;
  @override
  double get correctionValue;
  @override
  double get customStableStart;
  @override
  double get customStableEnd;
  @override
  SensorSpecModel? get spec;
  @override
  @JsonKey(ignore: true)
  _$$SensorDeviceModelImplCopyWith<_$SensorDeviceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
