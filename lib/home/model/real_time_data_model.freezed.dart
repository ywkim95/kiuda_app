// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'real_time_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RealTimeDataModel _$RealTimeDataModelFromJson(Map<String, dynamic> json) {
  return _RealTimeDataModel.fromJson(json);
}

/// @nodoc
mixin _$RealTimeDataModel {
  int get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  SensorDataModel? get sensorData => throw _privateConstructorUsedError;
  ControllerDataModel? get controllerData => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RealTimeDataModelCopyWith<RealTimeDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RealTimeDataModelCopyWith<$Res> {
  factory $RealTimeDataModelCopyWith(
          RealTimeDataModel value, $Res Function(RealTimeDataModel) then) =
      _$RealTimeDataModelCopyWithImpl<$Res, RealTimeDataModel>;
  @useResult
  $Res call(
      {int id,
      String type,
      SensorDataModel? sensorData,
      ControllerDataModel? controllerData});

  $SensorDataModelCopyWith<$Res>? get sensorData;
  $ControllerDataModelCopyWith<$Res>? get controllerData;
}

/// @nodoc
class _$RealTimeDataModelCopyWithImpl<$Res, $Val extends RealTimeDataModel>
    implements $RealTimeDataModelCopyWith<$Res> {
  _$RealTimeDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? sensorData = freezed,
    Object? controllerData = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      sensorData: freezed == sensorData
          ? _value.sensorData
          : sensorData // ignore: cast_nullable_to_non_nullable
              as SensorDataModel?,
      controllerData: freezed == controllerData
          ? _value.controllerData
          : controllerData // ignore: cast_nullable_to_non_nullable
              as ControllerDataModel?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SensorDataModelCopyWith<$Res>? get sensorData {
    if (_value.sensorData == null) {
      return null;
    }

    return $SensorDataModelCopyWith<$Res>(_value.sensorData!, (value) {
      return _then(_value.copyWith(sensorData: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ControllerDataModelCopyWith<$Res>? get controllerData {
    if (_value.controllerData == null) {
      return null;
    }

    return $ControllerDataModelCopyWith<$Res>(_value.controllerData!, (value) {
      return _then(_value.copyWith(controllerData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RealTimeDataModelImplCopyWith<$Res>
    implements $RealTimeDataModelCopyWith<$Res> {
  factory _$$RealTimeDataModelImplCopyWith(_$RealTimeDataModelImpl value,
          $Res Function(_$RealTimeDataModelImpl) then) =
      __$$RealTimeDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String type,
      SensorDataModel? sensorData,
      ControllerDataModel? controllerData});

  @override
  $SensorDataModelCopyWith<$Res>? get sensorData;
  @override
  $ControllerDataModelCopyWith<$Res>? get controllerData;
}

/// @nodoc
class __$$RealTimeDataModelImplCopyWithImpl<$Res>
    extends _$RealTimeDataModelCopyWithImpl<$Res, _$RealTimeDataModelImpl>
    implements _$$RealTimeDataModelImplCopyWith<$Res> {
  __$$RealTimeDataModelImplCopyWithImpl(_$RealTimeDataModelImpl _value,
      $Res Function(_$RealTimeDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? sensorData = freezed,
    Object? controllerData = freezed,
  }) {
    return _then(_$RealTimeDataModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      sensorData: freezed == sensorData
          ? _value.sensorData
          : sensorData // ignore: cast_nullable_to_non_nullable
              as SensorDataModel?,
      controllerData: freezed == controllerData
          ? _value.controllerData
          : controllerData // ignore: cast_nullable_to_non_nullable
              as ControllerDataModel?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RealTimeDataModelImpl implements _RealTimeDataModel {
  const _$RealTimeDataModelImpl(
      {required this.id,
      required this.type,
      this.sensorData,
      this.controllerData});

  factory _$RealTimeDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RealTimeDataModelImplFromJson(json);

  @override
  final int id;
  @override
  final String type;
  @override
  final SensorDataModel? sensorData;
  @override
  final ControllerDataModel? controllerData;

  @override
  String toString() {
    return 'RealTimeDataModel(id: $id, type: $type, sensorData: $sensorData, controllerData: $controllerData)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RealTimeDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.sensorData, sensorData) ||
                other.sensorData == sensorData) &&
            (identical(other.controllerData, controllerData) ||
                other.controllerData == controllerData));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, sensorData, controllerData);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RealTimeDataModelImplCopyWith<_$RealTimeDataModelImpl> get copyWith =>
      __$$RealTimeDataModelImplCopyWithImpl<_$RealTimeDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RealTimeDataModelImplToJson(
      this,
    );
  }
}

abstract class _RealTimeDataModel implements RealTimeDataModel {
  const factory _RealTimeDataModel(
      {required final int id,
      required final String type,
      final SensorDataModel? sensorData,
      final ControllerDataModel? controllerData}) = _$RealTimeDataModelImpl;

  factory _RealTimeDataModel.fromJson(Map<String, dynamic> json) =
      _$RealTimeDataModelImpl.fromJson;

  @override
  int get id;
  @override
  String get type;
  @override
  SensorDataModel? get sensorData;
  @override
  ControllerDataModel? get controllerData;
  @override
  @JsonKey(ignore: true)
  _$$RealTimeDataModelImplCopyWith<_$RealTimeDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
