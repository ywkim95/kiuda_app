// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'irradiance_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

IrradianceModel _$IrradianceModelFromJson(Map<String, dynamic> json) {
  return _IrradianceModel.fromJson(json);
}

/// @nodoc
mixin _$IrradianceModel {
  int get id => throw _privateConstructorUsedError;
  String get date => throw _privateConstructorUsedError;
  int get dataCount => throw _privateConstructorUsedError;
  double get accumulatedIrradiance => throw _privateConstructorUsedError;
  int get deviceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IrradianceModelCopyWith<IrradianceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IrradianceModelCopyWith<$Res> {
  factory $IrradianceModelCopyWith(
          IrradianceModel value, $Res Function(IrradianceModel) then) =
      _$IrradianceModelCopyWithImpl<$Res, IrradianceModel>;
  @useResult
  $Res call(
      {int id,
      String date,
      int dataCount,
      double accumulatedIrradiance,
      int deviceId});
}

/// @nodoc
class _$IrradianceModelCopyWithImpl<$Res, $Val extends IrradianceModel>
    implements $IrradianceModelCopyWith<$Res> {
  _$IrradianceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? dataCount = null,
    Object? accumulatedIrradiance = null,
    Object? deviceId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      dataCount: null == dataCount
          ? _value.dataCount
          : dataCount // ignore: cast_nullable_to_non_nullable
              as int,
      accumulatedIrradiance: null == accumulatedIrradiance
          ? _value.accumulatedIrradiance
          : accumulatedIrradiance // ignore: cast_nullable_to_non_nullable
              as double,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$IrradianceModelImplCopyWith<$Res>
    implements $IrradianceModelCopyWith<$Res> {
  factory _$$IrradianceModelImplCopyWith(_$IrradianceModelImpl value,
          $Res Function(_$IrradianceModelImpl) then) =
      __$$IrradianceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String date,
      int dataCount,
      double accumulatedIrradiance,
      int deviceId});
}

/// @nodoc
class __$$IrradianceModelImplCopyWithImpl<$Res>
    extends _$IrradianceModelCopyWithImpl<$Res, _$IrradianceModelImpl>
    implements _$$IrradianceModelImplCopyWith<$Res> {
  __$$IrradianceModelImplCopyWithImpl(
      _$IrradianceModelImpl _value, $Res Function(_$IrradianceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? date = null,
    Object? dataCount = null,
    Object? accumulatedIrradiance = null,
    Object? deviceId = null,
  }) {
    return _then(_$IrradianceModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      date: null == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
      dataCount: null == dataCount
          ? _value.dataCount
          : dataCount // ignore: cast_nullable_to_non_nullable
              as int,
      accumulatedIrradiance: null == accumulatedIrradiance
          ? _value.accumulatedIrradiance
          : accumulatedIrradiance // ignore: cast_nullable_to_non_nullable
              as double,
      deviceId: null == deviceId
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IrradianceModelImpl implements _IrradianceModel {
  const _$IrradianceModelImpl(
      {required this.id,
      required this.date,
      required this.dataCount,
      required this.accumulatedIrradiance,
      required this.deviceId});

  factory _$IrradianceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$IrradianceModelImplFromJson(json);

  @override
  final int id;
  @override
  final String date;
  @override
  final int dataCount;
  @override
  final double accumulatedIrradiance;
  @override
  final int deviceId;

  @override
  String toString() {
    return 'IrradianceModel(id: $id, date: $date, dataCount: $dataCount, accumulatedIrradiance: $accumulatedIrradiance, deviceId: $deviceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IrradianceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.dataCount, dataCount) ||
                other.dataCount == dataCount) &&
            (identical(other.accumulatedIrradiance, accumulatedIrradiance) ||
                other.accumulatedIrradiance == accumulatedIrradiance) &&
            (identical(other.deviceId, deviceId) ||
                other.deviceId == deviceId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, date, dataCount, accumulatedIrradiance, deviceId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IrradianceModelImplCopyWith<_$IrradianceModelImpl> get copyWith =>
      __$$IrradianceModelImplCopyWithImpl<_$IrradianceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IrradianceModelImplToJson(
      this,
    );
  }
}

abstract class _IrradianceModel implements IrradianceModel {
  const factory _IrradianceModel(
      {required final int id,
      required final String date,
      required final int dataCount,
      required final double accumulatedIrradiance,
      required final int deviceId}) = _$IrradianceModelImpl;

  factory _IrradianceModel.fromJson(Map<String, dynamic> json) =
      _$IrradianceModelImpl.fromJson;

  @override
  int get id;
  @override
  String get date;
  @override
  int get dataCount;
  @override
  double get accumulatedIrradiance;
  @override
  int get deviceId;
  @override
  @JsonKey(ignore: true)
  _$$IrradianceModelImplCopyWith<_$IrradianceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
