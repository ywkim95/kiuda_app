// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gateway_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GatewayModel _$GatewayModelFromJson(Map<String, dynamic> json) {
  return _GatewayModel.fromJson(json);
}

/// @nodoc
mixin _$GatewayModel {
  int get id => throw _privateConstructorUsedError;
  String get countryId => throw _privateConstructorUsedError;
  String get areaId => throw _privateConstructorUsedError;
  String get gatewayId => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<DeviceModel>? get devices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GatewayModelCopyWith<GatewayModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GatewayModelCopyWith<$Res> {
  factory $GatewayModelCopyWith(
          GatewayModel value, $Res Function(GatewayModel) then) =
      _$GatewayModelCopyWithImpl<$Res, GatewayModel>;
  @useResult
  $Res call(
      {int id,
      String countryId,
      String areaId,
      String gatewayId,
      String location,
      String name,
      List<DeviceModel>? devices});
}

/// @nodoc
class _$GatewayModelCopyWithImpl<$Res, $Val extends GatewayModel>
    implements $GatewayModelCopyWith<$Res> {
  _$GatewayModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? countryId = null,
    Object? areaId = null,
    Object? gatewayId = null,
    Object? location = null,
    Object? name = null,
    Object? devices = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String,
      areaId: null == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as String,
      gatewayId: null == gatewayId
          ? _value.gatewayId
          : gatewayId // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      devices: freezed == devices
          ? _value.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<DeviceModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GatewayModelImplCopyWith<$Res>
    implements $GatewayModelCopyWith<$Res> {
  factory _$$GatewayModelImplCopyWith(
          _$GatewayModelImpl value, $Res Function(_$GatewayModelImpl) then) =
      __$$GatewayModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String countryId,
      String areaId,
      String gatewayId,
      String location,
      String name,
      List<DeviceModel>? devices});
}

/// @nodoc
class __$$GatewayModelImplCopyWithImpl<$Res>
    extends _$GatewayModelCopyWithImpl<$Res, _$GatewayModelImpl>
    implements _$$GatewayModelImplCopyWith<$Res> {
  __$$GatewayModelImplCopyWithImpl(
      _$GatewayModelImpl _value, $Res Function(_$GatewayModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? countryId = null,
    Object? areaId = null,
    Object? gatewayId = null,
    Object? location = null,
    Object? name = null,
    Object? devices = freezed,
  }) {
    return _then(_$GatewayModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as String,
      areaId: null == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as String,
      gatewayId: null == gatewayId
          ? _value.gatewayId
          : gatewayId // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      devices: freezed == devices
          ? _value._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<DeviceModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GatewayModelImpl implements _GatewayModel {
  const _$GatewayModelImpl(
      {required this.id,
      required this.countryId,
      required this.areaId,
      required this.gatewayId,
      required this.location,
      required this.name,
      final List<DeviceModel>? devices})
      : _devices = devices;

  factory _$GatewayModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$GatewayModelImplFromJson(json);

  @override
  final int id;
  @override
  final String countryId;
  @override
  final String areaId;
  @override
  final String gatewayId;
  @override
  final String location;
  @override
  final String name;
  final List<DeviceModel>? _devices;
  @override
  List<DeviceModel>? get devices {
    final value = _devices;
    if (value == null) return null;
    if (_devices is EqualUnmodifiableListView) return _devices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GatewayModel(id: $id, countryId: $countryId, areaId: $areaId, gatewayId: $gatewayId, location: $location, name: $name, devices: $devices)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GatewayModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.areaId, areaId) || other.areaId == areaId) &&
            (identical(other.gatewayId, gatewayId) ||
                other.gatewayId == gatewayId) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._devices, _devices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, countryId, areaId, gatewayId,
      location, name, const DeepCollectionEquality().hash(_devices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GatewayModelImplCopyWith<_$GatewayModelImpl> get copyWith =>
      __$$GatewayModelImplCopyWithImpl<_$GatewayModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GatewayModelImplToJson(
      this,
    );
  }
}

abstract class _GatewayModel implements GatewayModel {
  const factory _GatewayModel(
      {required final int id,
      required final String countryId,
      required final String areaId,
      required final String gatewayId,
      required final String location,
      required final String name,
      final List<DeviceModel>? devices}) = _$GatewayModelImpl;

  factory _GatewayModel.fromJson(Map<String, dynamic> json) =
      _$GatewayModelImpl.fromJson;

  @override
  int get id;
  @override
  String get countryId;
  @override
  String get areaId;
  @override
  String get gatewayId;
  @override
  String get location;
  @override
  String get name;
  @override
  List<DeviceModel>? get devices;
  @override
  @JsonKey(ignore: true)
  _$$GatewayModelImplCopyWith<_$GatewayModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
