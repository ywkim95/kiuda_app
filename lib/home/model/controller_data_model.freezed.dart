// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'controller_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ControllerDataModel _$ControllerDataModelFromJson(Map<String, dynamic> json) {
  return _ControllerDataModel.fromJson(json);
}

/// @nodoc
mixin _$ControllerDataModel {
  int get id => throw _privateConstructorUsedError;
  String? get gpio1 => throw _privateConstructorUsedError;
  String? get gpio2 => throw _privateConstructorUsedError;
  double get rssi => throw _privateConstructorUsedError;
  double get sqn => throw _privateConstructorUsedError;
  DeviceModel get device => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ControllerDataModelCopyWith<ControllerDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ControllerDataModelCopyWith<$Res> {
  factory $ControllerDataModelCopyWith(
          ControllerDataModel value, $Res Function(ControllerDataModel) then) =
      _$ControllerDataModelCopyWithImpl<$Res, ControllerDataModel>;
  @useResult
  $Res call(
      {int id,
      String? gpio1,
      String? gpio2,
      double rssi,
      double sqn,
      DeviceModel device});

  $DeviceModelCopyWith<$Res> get device;
}

/// @nodoc
class _$ControllerDataModelCopyWithImpl<$Res, $Val extends ControllerDataModel>
    implements $ControllerDataModelCopyWith<$Res> {
  _$ControllerDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? gpio1 = freezed,
    Object? gpio2 = freezed,
    Object? rssi = null,
    Object? sqn = null,
    Object? device = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      gpio1: freezed == gpio1
          ? _value.gpio1
          : gpio1 // ignore: cast_nullable_to_non_nullable
              as String?,
      gpio2: freezed == gpio2
          ? _value.gpio2
          : gpio2 // ignore: cast_nullable_to_non_nullable
              as String?,
      rssi: null == rssi
          ? _value.rssi
          : rssi // ignore: cast_nullable_to_non_nullable
              as double,
      sqn: null == sqn
          ? _value.sqn
          : sqn // ignore: cast_nullable_to_non_nullable
              as double,
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as DeviceModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeviceModelCopyWith<$Res> get device {
    return $DeviceModelCopyWith<$Res>(_value.device, (value) {
      return _then(_value.copyWith(device: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ControllerDataModelImplCopyWith<$Res>
    implements $ControllerDataModelCopyWith<$Res> {
  factory _$$ControllerDataModelImplCopyWith(_$ControllerDataModelImpl value,
          $Res Function(_$ControllerDataModelImpl) then) =
      __$$ControllerDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? gpio1,
      String? gpio2,
      double rssi,
      double sqn,
      DeviceModel device});

  @override
  $DeviceModelCopyWith<$Res> get device;
}

/// @nodoc
class __$$ControllerDataModelImplCopyWithImpl<$Res>
    extends _$ControllerDataModelCopyWithImpl<$Res, _$ControllerDataModelImpl>
    implements _$$ControllerDataModelImplCopyWith<$Res> {
  __$$ControllerDataModelImplCopyWithImpl(_$ControllerDataModelImpl _value,
      $Res Function(_$ControllerDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? gpio1 = freezed,
    Object? gpio2 = freezed,
    Object? rssi = null,
    Object? sqn = null,
    Object? device = null,
  }) {
    return _then(_$ControllerDataModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      gpio1: freezed == gpio1
          ? _value.gpio1
          : gpio1 // ignore: cast_nullable_to_non_nullable
              as String?,
      gpio2: freezed == gpio2
          ? _value.gpio2
          : gpio2 // ignore: cast_nullable_to_non_nullable
              as String?,
      rssi: null == rssi
          ? _value.rssi
          : rssi // ignore: cast_nullable_to_non_nullable
              as double,
      sqn: null == sqn
          ? _value.sqn
          : sqn // ignore: cast_nullable_to_non_nullable
              as double,
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as DeviceModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ControllerDataModelImpl implements _ControllerDataModel {
  const _$ControllerDataModelImpl(
      {required this.id,
      this.gpio1,
      this.gpio2,
      required this.rssi,
      required this.sqn,
      required this.device});

  factory _$ControllerDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ControllerDataModelImplFromJson(json);

  @override
  final int id;
  @override
  final String? gpio1;
  @override
  final String? gpio2;
  @override
  final double rssi;
  @override
  final double sqn;
  @override
  final DeviceModel device;

  @override
  String toString() {
    return 'ControllerDataModel(id: $id, gpio1: $gpio1, gpio2: $gpio2, rssi: $rssi, sqn: $sqn, device: $device)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ControllerDataModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.gpio1, gpio1) || other.gpio1 == gpio1) &&
            (identical(other.gpio2, gpio2) || other.gpio2 == gpio2) &&
            (identical(other.rssi, rssi) || other.rssi == rssi) &&
            (identical(other.sqn, sqn) || other.sqn == sqn) &&
            (identical(other.device, device) || other.device == device));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, gpio1, gpio2, rssi, sqn, device);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ControllerDataModelImplCopyWith<_$ControllerDataModelImpl> get copyWith =>
      __$$ControllerDataModelImplCopyWithImpl<_$ControllerDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ControllerDataModelImplToJson(
      this,
    );
  }
}

abstract class _ControllerDataModel implements ControllerDataModel {
  const factory _ControllerDataModel(
      {required final int id,
      final String? gpio1,
      final String? gpio2,
      required final double rssi,
      required final double sqn,
      required final DeviceModel device}) = _$ControllerDataModelImpl;

  factory _ControllerDataModel.fromJson(Map<String, dynamic> json) =
      _$ControllerDataModelImpl.fromJson;

  @override
  int get id;
  @override
  String? get gpio1;
  @override
  String? get gpio2;
  @override
  double get rssi;
  @override
  double get sqn;
  @override
  DeviceModel get device;
  @override
  @JsonKey(ignore: true)
  _$$ControllerDataModelImplCopyWith<_$ControllerDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
