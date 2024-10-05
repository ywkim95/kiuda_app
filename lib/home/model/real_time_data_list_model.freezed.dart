// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'real_time_data_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RealTimeDataListModel _$RealTimeDataListModelFromJson(
    Map<String, dynamic> json) {
  return _RealTimeDataListModel.fromJson(json);
}

/// @nodoc
mixin _$RealTimeDataListModel {
  List<RealTimeDataModel> get deviceList => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RealTimeDataListModelCopyWith<RealTimeDataListModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RealTimeDataListModelCopyWith<$Res> {
  factory $RealTimeDataListModelCopyWith(RealTimeDataListModel value,
          $Res Function(RealTimeDataListModel) then) =
      _$RealTimeDataListModelCopyWithImpl<$Res, RealTimeDataListModel>;
  @useResult
  $Res call({List<RealTimeDataModel> deviceList, bool status});
}

/// @nodoc
class _$RealTimeDataListModelCopyWithImpl<$Res,
        $Val extends RealTimeDataListModel>
    implements $RealTimeDataListModelCopyWith<$Res> {
  _$RealTimeDataListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceList = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      deviceList: null == deviceList
          ? _value.deviceList
          : deviceList // ignore: cast_nullable_to_non_nullable
              as List<RealTimeDataModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RealTimeDataListModelImplCopyWith<$Res>
    implements $RealTimeDataListModelCopyWith<$Res> {
  factory _$$RealTimeDataListModelImplCopyWith(
          _$RealTimeDataListModelImpl value,
          $Res Function(_$RealTimeDataListModelImpl) then) =
      __$$RealTimeDataListModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<RealTimeDataModel> deviceList, bool status});
}

/// @nodoc
class __$$RealTimeDataListModelImplCopyWithImpl<$Res>
    extends _$RealTimeDataListModelCopyWithImpl<$Res,
        _$RealTimeDataListModelImpl>
    implements _$$RealTimeDataListModelImplCopyWith<$Res> {
  __$$RealTimeDataListModelImplCopyWithImpl(_$RealTimeDataListModelImpl _value,
      $Res Function(_$RealTimeDataListModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deviceList = null,
    Object? status = null,
  }) {
    return _then(_$RealTimeDataListModelImpl(
      deviceList: null == deviceList
          ? _value._deviceList
          : deviceList // ignore: cast_nullable_to_non_nullable
              as List<RealTimeDataModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RealTimeDataListModelImpl implements _RealTimeDataListModel {
  const _$RealTimeDataListModelImpl(
      {required final List<RealTimeDataModel> deviceList, required this.status})
      : _deviceList = deviceList;

  factory _$RealTimeDataListModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$RealTimeDataListModelImplFromJson(json);

  final List<RealTimeDataModel> _deviceList;
  @override
  List<RealTimeDataModel> get deviceList {
    if (_deviceList is EqualUnmodifiableListView) return _deviceList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_deviceList);
  }

  @override
  final bool status;

  @override
  String toString() {
    return 'RealTimeDataListModel(deviceList: $deviceList, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RealTimeDataListModelImpl &&
            const DeepCollectionEquality()
                .equals(other._deviceList, _deviceList) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_deviceList), status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RealTimeDataListModelImplCopyWith<_$RealTimeDataListModelImpl>
      get copyWith => __$$RealTimeDataListModelImplCopyWithImpl<
          _$RealTimeDataListModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RealTimeDataListModelImplToJson(
      this,
    );
  }
}

abstract class _RealTimeDataListModel implements RealTimeDataListModel {
  const factory _RealTimeDataListModel(
      {required final List<RealTimeDataModel> deviceList,
      required final bool status}) = _$RealTimeDataListModelImpl;

  factory _RealTimeDataListModel.fromJson(Map<String, dynamic> json) =
      _$RealTimeDataListModelImpl.fromJson;

  @override
  List<RealTimeDataModel> get deviceList;
  @override
  bool get status;
  @override
  @JsonKey(ignore: true)
  _$$RealTimeDataListModelImplCopyWith<_$RealTimeDataListModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
