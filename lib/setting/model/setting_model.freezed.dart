// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'setting_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingModel _$SettingModelFromJson(Map<String, dynamic> json) {
  return _SettingModel.fromJson(json);
}

/// @nodoc
mixin _$SettingModel {
  List<SensorDeviceModel> get sensorList => throw _privateConstructorUsedError;
  List<ContDeviceModel> get controllerList =>
      throw _privateConstructorUsedError;
  List<DeviceModel> get useYnList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingModelCopyWith<SettingModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingModelCopyWith<$Res> {
  factory $SettingModelCopyWith(
          SettingModel value, $Res Function(SettingModel) then) =
      _$SettingModelCopyWithImpl<$Res, SettingModel>;
  @useResult
  $Res call(
      {List<SensorDeviceModel> sensorList,
      List<ContDeviceModel> controllerList,
      List<DeviceModel> useYnList});
}

/// @nodoc
class _$SettingModelCopyWithImpl<$Res, $Val extends SettingModel>
    implements $SettingModelCopyWith<$Res> {
  _$SettingModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sensorList = null,
    Object? controllerList = null,
    Object? useYnList = null,
  }) {
    return _then(_value.copyWith(
      sensorList: null == sensorList
          ? _value.sensorList
          : sensorList // ignore: cast_nullable_to_non_nullable
              as List<SensorDeviceModel>,
      controllerList: null == controllerList
          ? _value.controllerList
          : controllerList // ignore: cast_nullable_to_non_nullable
              as List<ContDeviceModel>,
      useYnList: null == useYnList
          ? _value.useYnList
          : useYnList // ignore: cast_nullable_to_non_nullable
              as List<DeviceModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SettingModelImplCopyWith<$Res>
    implements $SettingModelCopyWith<$Res> {
  factory _$$SettingModelImplCopyWith(
          _$SettingModelImpl value, $Res Function(_$SettingModelImpl) then) =
      __$$SettingModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SensorDeviceModel> sensorList,
      List<ContDeviceModel> controllerList,
      List<DeviceModel> useYnList});
}

/// @nodoc
class __$$SettingModelImplCopyWithImpl<$Res>
    extends _$SettingModelCopyWithImpl<$Res, _$SettingModelImpl>
    implements _$$SettingModelImplCopyWith<$Res> {
  __$$SettingModelImplCopyWithImpl(
      _$SettingModelImpl _value, $Res Function(_$SettingModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sensorList = null,
    Object? controllerList = null,
    Object? useYnList = null,
  }) {
    return _then(_$SettingModelImpl(
      sensorList: null == sensorList
          ? _value._sensorList
          : sensorList // ignore: cast_nullable_to_non_nullable
              as List<SensorDeviceModel>,
      controllerList: null == controllerList
          ? _value._controllerList
          : controllerList // ignore: cast_nullable_to_non_nullable
              as List<ContDeviceModel>,
      useYnList: null == useYnList
          ? _value._useYnList
          : useYnList // ignore: cast_nullable_to_non_nullable
              as List<DeviceModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SettingModelImpl implements _SettingModel {
  const _$SettingModelImpl(
      {required final List<SensorDeviceModel> sensorList,
      required final List<ContDeviceModel> controllerList,
      required final List<DeviceModel> useYnList})
      : _sensorList = sensorList,
        _controllerList = controllerList,
        _useYnList = useYnList;

  factory _$SettingModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingModelImplFromJson(json);

  final List<SensorDeviceModel> _sensorList;
  @override
  List<SensorDeviceModel> get sensorList {
    if (_sensorList is EqualUnmodifiableListView) return _sensorList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_sensorList);
  }

  final List<ContDeviceModel> _controllerList;
  @override
  List<ContDeviceModel> get controllerList {
    if (_controllerList is EqualUnmodifiableListView) return _controllerList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_controllerList);
  }

  final List<DeviceModel> _useYnList;
  @override
  List<DeviceModel> get useYnList {
    if (_useYnList is EqualUnmodifiableListView) return _useYnList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_useYnList);
  }

  @override
  String toString() {
    return 'SettingModel(sensorList: $sensorList, controllerList: $controllerList, useYnList: $useYnList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingModelImpl &&
            const DeepCollectionEquality()
                .equals(other._sensorList, _sensorList) &&
            const DeepCollectionEquality()
                .equals(other._controllerList, _controllerList) &&
            const DeepCollectionEquality()
                .equals(other._useYnList, _useYnList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_sensorList),
      const DeepCollectionEquality().hash(_controllerList),
      const DeepCollectionEquality().hash(_useYnList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingModelImplCopyWith<_$SettingModelImpl> get copyWith =>
      __$$SettingModelImplCopyWithImpl<_$SettingModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingModelImplToJson(
      this,
    );
  }
}

abstract class _SettingModel implements SettingModel {
  const factory _SettingModel(
      {required final List<SensorDeviceModel> sensorList,
      required final List<ContDeviceModel> controllerList,
      required final List<DeviceModel> useYnList}) = _$SettingModelImpl;

  factory _SettingModel.fromJson(Map<String, dynamic> json) =
      _$SettingModelImpl.fromJson;

  @override
  List<SensorDeviceModel> get sensorList;
  @override
  List<ContDeviceModel> get controllerList;
  @override
  List<DeviceModel> get useYnList;
  @override
  @JsonKey(ignore: true)
  _$$SettingModelImplCopyWith<_$SettingModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
