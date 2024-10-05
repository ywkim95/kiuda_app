// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'device_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DeviceModel _$DeviceModelFromJson(Map<String, dynamic> json) {
  return _DeviceModel.fromJson(json);
}

/// @nodoc
mixin _$DeviceModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get clientId => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  TypeEnum get classify => throw _privateConstructorUsedError;
  int get statusCode => throw _privateConstructorUsedError;
  bool get useYn => throw _privateConstructorUsedError;
  List<ContDeviceModel>? get controllers => throw _privateConstructorUsedError;
  List<SensorDeviceModel>? get sensors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceModelCopyWith<DeviceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceModelCopyWith<$Res> {
  factory $DeviceModelCopyWith(
          DeviceModel value, $Res Function(DeviceModel) then) =
      _$DeviceModelCopyWithImpl<$Res, DeviceModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String clientId,
      String? location,
      String description,
      TypeEnum classify,
      int statusCode,
      bool useYn,
      List<ContDeviceModel>? controllers,
      List<SensorDeviceModel>? sensors});
}

/// @nodoc
class _$DeviceModelCopyWithImpl<$Res, $Val extends DeviceModel>
    implements $DeviceModelCopyWith<$Res> {
  _$DeviceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? clientId = null,
    Object? location = freezed,
    Object? description = null,
    Object? classify = null,
    Object? statusCode = null,
    Object? useYn = null,
    Object? controllers = freezed,
    Object? sensors = freezed,
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
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      classify: null == classify
          ? _value.classify
          : classify // ignore: cast_nullable_to_non_nullable
              as TypeEnum,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      useYn: null == useYn
          ? _value.useYn
          : useYn // ignore: cast_nullable_to_non_nullable
              as bool,
      controllers: freezed == controllers
          ? _value.controllers
          : controllers // ignore: cast_nullable_to_non_nullable
              as List<ContDeviceModel>?,
      sensors: freezed == sensors
          ? _value.sensors
          : sensors // ignore: cast_nullable_to_non_nullable
              as List<SensorDeviceModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceModelImplCopyWith<$Res>
    implements $DeviceModelCopyWith<$Res> {
  factory _$$DeviceModelImplCopyWith(
          _$DeviceModelImpl value, $Res Function(_$DeviceModelImpl) then) =
      __$$DeviceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String clientId,
      String? location,
      String description,
      TypeEnum classify,
      int statusCode,
      bool useYn,
      List<ContDeviceModel>? controllers,
      List<SensorDeviceModel>? sensors});
}

/// @nodoc
class __$$DeviceModelImplCopyWithImpl<$Res>
    extends _$DeviceModelCopyWithImpl<$Res, _$DeviceModelImpl>
    implements _$$DeviceModelImplCopyWith<$Res> {
  __$$DeviceModelImplCopyWithImpl(
      _$DeviceModelImpl _value, $Res Function(_$DeviceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? clientId = null,
    Object? location = freezed,
    Object? description = null,
    Object? classify = null,
    Object? statusCode = null,
    Object? useYn = null,
    Object? controllers = freezed,
    Object? sensors = freezed,
  }) {
    return _then(_$DeviceModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      clientId: null == clientId
          ? _value.clientId
          : clientId // ignore: cast_nullable_to_non_nullable
              as String,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      classify: null == classify
          ? _value.classify
          : classify // ignore: cast_nullable_to_non_nullable
              as TypeEnum,
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      useYn: null == useYn
          ? _value.useYn
          : useYn // ignore: cast_nullable_to_non_nullable
              as bool,
      controllers: freezed == controllers
          ? _value._controllers
          : controllers // ignore: cast_nullable_to_non_nullable
              as List<ContDeviceModel>?,
      sensors: freezed == sensors
          ? _value._sensors
          : sensors // ignore: cast_nullable_to_non_nullable
              as List<SensorDeviceModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceModelImpl implements _DeviceModel {
  const _$DeviceModelImpl(
      {required this.id,
      required this.name,
      required this.clientId,
      this.location,
      required this.description,
      required this.classify,
      required this.statusCode,
      required this.useYn,
      final List<ContDeviceModel>? controllers,
      final List<SensorDeviceModel>? sensors})
      : _controllers = controllers,
        _sensors = sensors;

  factory _$DeviceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String clientId;
  @override
  final String? location;
  @override
  final String description;
  @override
  final TypeEnum classify;
  @override
  final int statusCode;
  @override
  final bool useYn;
  final List<ContDeviceModel>? _controllers;
  @override
  List<ContDeviceModel>? get controllers {
    final value = _controllers;
    if (value == null) return null;
    if (_controllers is EqualUnmodifiableListView) return _controllers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<SensorDeviceModel>? _sensors;
  @override
  List<SensorDeviceModel>? get sensors {
    final value = _sensors;
    if (value == null) return null;
    if (_sensors is EqualUnmodifiableListView) return _sensors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'DeviceModel(id: $id, name: $name, clientId: $clientId, location: $location, description: $description, classify: $classify, statusCode: $statusCode, useYn: $useYn, controllers: $controllers, sensors: $sensors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.clientId, clientId) ||
                other.clientId == clientId) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.classify, classify) ||
                other.classify == classify) &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.useYn, useYn) || other.useYn == useYn) &&
            const DeepCollectionEquality()
                .equals(other._controllers, _controllers) &&
            const DeepCollectionEquality().equals(other._sensors, _sensors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      clientId,
      location,
      description,
      classify,
      statusCode,
      useYn,
      const DeepCollectionEquality().hash(_controllers),
      const DeepCollectionEquality().hash(_sensors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceModelImplCopyWith<_$DeviceModelImpl> get copyWith =>
      __$$DeviceModelImplCopyWithImpl<_$DeviceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceModelImplToJson(
      this,
    );
  }
}

abstract class _DeviceModel implements DeviceModel {
  const factory _DeviceModel(
      {required final int id,
      required final String name,
      required final String clientId,
      final String? location,
      required final String description,
      required final TypeEnum classify,
      required final int statusCode,
      required final bool useYn,
      final List<ContDeviceModel>? controllers,
      final List<SensorDeviceModel>? sensors}) = _$DeviceModelImpl;

  factory _DeviceModel.fromJson(Map<String, dynamic> json) =
      _$DeviceModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get clientId;
  @override
  String? get location;
  @override
  String get description;
  @override
  TypeEnum get classify;
  @override
  int get statusCode;
  @override
  bool get useYn;
  @override
  List<ContDeviceModel>? get controllers;
  @override
  List<SensorDeviceModel>? get sensors;
  @override
  @JsonKey(ignore: true)
  _$$DeviceModelImplCopyWith<_$DeviceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
