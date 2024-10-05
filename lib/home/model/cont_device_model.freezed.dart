// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cont_device_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContDeviceModel _$ContDeviceModelFromJson(Map<String, dynamic> json) {
  return _ContDeviceModel.fromJson(json);
}

/// @nodoc
mixin _$ContDeviceModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get varName => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;
  bool get useYn => throw _privateConstructorUsedError;
  int get mappingSensorId => throw _privateConstructorUsedError;
  int get connectedDeviceId => throw _privateConstructorUsedError;
  ContSpecModel? get specification => throw _privateConstructorUsedError;
  List<UserCustomValueModel>? get userCustomValues =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContDeviceModelCopyWith<ContDeviceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContDeviceModelCopyWith<$Res> {
  factory $ContDeviceModelCopyWith(
          ContDeviceModel value, $Res Function(ContDeviceModel) then) =
      _$ContDeviceModelCopyWithImpl<$Res, ContDeviceModel>;
  @useResult
  $Res call(
      {int id,
      String name,
      String? varName,
      String? location,
      bool useYn,
      int mappingSensorId,
      int connectedDeviceId,
      ContSpecModel? specification,
      List<UserCustomValueModel>? userCustomValues});

  $ContSpecModelCopyWith<$Res>? get specification;
}

/// @nodoc
class _$ContDeviceModelCopyWithImpl<$Res, $Val extends ContDeviceModel>
    implements $ContDeviceModelCopyWith<$Res> {
  _$ContDeviceModelCopyWithImpl(this._value, this._then);

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
    Object? location = freezed,
    Object? useYn = null,
    Object? mappingSensorId = null,
    Object? connectedDeviceId = null,
    Object? specification = freezed,
    Object? userCustomValues = freezed,
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
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      useYn: null == useYn
          ? _value.useYn
          : useYn // ignore: cast_nullable_to_non_nullable
              as bool,
      mappingSensorId: null == mappingSensorId
          ? _value.mappingSensorId
          : mappingSensorId // ignore: cast_nullable_to_non_nullable
              as int,
      connectedDeviceId: null == connectedDeviceId
          ? _value.connectedDeviceId
          : connectedDeviceId // ignore: cast_nullable_to_non_nullable
              as int,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as ContSpecModel?,
      userCustomValues: freezed == userCustomValues
          ? _value.userCustomValues
          : userCustomValues // ignore: cast_nullable_to_non_nullable
              as List<UserCustomValueModel>?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContSpecModelCopyWith<$Res>? get specification {
    if (_value.specification == null) {
      return null;
    }

    return $ContSpecModelCopyWith<$Res>(_value.specification!, (value) {
      return _then(_value.copyWith(specification: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContDeviceModelImplCopyWith<$Res>
    implements $ContDeviceModelCopyWith<$Res> {
  factory _$$ContDeviceModelImplCopyWith(_$ContDeviceModelImpl value,
          $Res Function(_$ContDeviceModelImpl) then) =
      __$$ContDeviceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String name,
      String? varName,
      String? location,
      bool useYn,
      int mappingSensorId,
      int connectedDeviceId,
      ContSpecModel? specification,
      List<UserCustomValueModel>? userCustomValues});

  @override
  $ContSpecModelCopyWith<$Res>? get specification;
}

/// @nodoc
class __$$ContDeviceModelImplCopyWithImpl<$Res>
    extends _$ContDeviceModelCopyWithImpl<$Res, _$ContDeviceModelImpl>
    implements _$$ContDeviceModelImplCopyWith<$Res> {
  __$$ContDeviceModelImplCopyWithImpl(
      _$ContDeviceModelImpl _value, $Res Function(_$ContDeviceModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? varName = freezed,
    Object? location = freezed,
    Object? useYn = null,
    Object? mappingSensorId = null,
    Object? connectedDeviceId = null,
    Object? specification = freezed,
    Object? userCustomValues = freezed,
  }) {
    return _then(_$ContDeviceModelImpl(
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
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
      useYn: null == useYn
          ? _value.useYn
          : useYn // ignore: cast_nullable_to_non_nullable
              as bool,
      mappingSensorId: null == mappingSensorId
          ? _value.mappingSensorId
          : mappingSensorId // ignore: cast_nullable_to_non_nullable
              as int,
      connectedDeviceId: null == connectedDeviceId
          ? _value.connectedDeviceId
          : connectedDeviceId // ignore: cast_nullable_to_non_nullable
              as int,
      specification: freezed == specification
          ? _value.specification
          : specification // ignore: cast_nullable_to_non_nullable
              as ContSpecModel?,
      userCustomValues: freezed == userCustomValues
          ? _value._userCustomValues
          : userCustomValues // ignore: cast_nullable_to_non_nullable
              as List<UserCustomValueModel>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContDeviceModelImpl implements _ContDeviceModel {
  const _$ContDeviceModelImpl(
      {required this.id,
      required this.name,
      this.varName,
      this.location,
      required this.useYn,
      required this.mappingSensorId,
      required this.connectedDeviceId,
      this.specification,
      final List<UserCustomValueModel>? userCustomValues})
      : _userCustomValues = userCustomValues;

  factory _$ContDeviceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContDeviceModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String? varName;
  @override
  final String? location;
  @override
  final bool useYn;
  @override
  final int mappingSensorId;
  @override
  final int connectedDeviceId;
  @override
  final ContSpecModel? specification;
  final List<UserCustomValueModel>? _userCustomValues;
  @override
  List<UserCustomValueModel>? get userCustomValues {
    final value = _userCustomValues;
    if (value == null) return null;
    if (_userCustomValues is EqualUnmodifiableListView)
      return _userCustomValues;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ContDeviceModel(id: $id, name: $name, varName: $varName, location: $location, useYn: $useYn, mappingSensorId: $mappingSensorId, connectedDeviceId: $connectedDeviceId, specification: $specification, userCustomValues: $userCustomValues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContDeviceModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.varName, varName) || other.varName == varName) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.useYn, useYn) || other.useYn == useYn) &&
            (identical(other.mappingSensorId, mappingSensorId) ||
                other.mappingSensorId == mappingSensorId) &&
            (identical(other.connectedDeviceId, connectedDeviceId) ||
                other.connectedDeviceId == connectedDeviceId) &&
            (identical(other.specification, specification) ||
                other.specification == specification) &&
            const DeepCollectionEquality()
                .equals(other._userCustomValues, _userCustomValues));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      name,
      varName,
      location,
      useYn,
      mappingSensorId,
      connectedDeviceId,
      specification,
      const DeepCollectionEquality().hash(_userCustomValues));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContDeviceModelImplCopyWith<_$ContDeviceModelImpl> get copyWith =>
      __$$ContDeviceModelImplCopyWithImpl<_$ContDeviceModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContDeviceModelImplToJson(
      this,
    );
  }
}

abstract class _ContDeviceModel implements ContDeviceModel {
  const factory _ContDeviceModel(
          {required final int id,
          required final String name,
          final String? varName,
          final String? location,
          required final bool useYn,
          required final int mappingSensorId,
          required final int connectedDeviceId,
          final ContSpecModel? specification,
          final List<UserCustomValueModel>? userCustomValues}) =
      _$ContDeviceModelImpl;

  factory _ContDeviceModel.fromJson(Map<String, dynamic> json) =
      _$ContDeviceModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String? get varName;
  @override
  String? get location;
  @override
  bool get useYn;
  @override
  int get mappingSensorId;
  @override
  int get connectedDeviceId;
  @override
  ContSpecModel? get specification;
  @override
  List<UserCustomValueModel>? get userCustomValues;
  @override
  @JsonKey(ignore: true)
  _$$ContDeviceModelImplCopyWith<_$ContDeviceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
