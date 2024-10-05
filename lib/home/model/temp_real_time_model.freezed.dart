// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temp_real_time_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TempRealTimeModel _$TempRealTimeModelFromJson(Map<String, dynamic> json) {
  return _TempRealTimeModel.fromJson(json);
}

/// @nodoc
mixin _$TempRealTimeModel {
  TempModel get data => throw _privateConstructorUsedError;
  bool get status => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TempRealTimeModelCopyWith<TempRealTimeModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempRealTimeModelCopyWith<$Res> {
  factory $TempRealTimeModelCopyWith(
          TempRealTimeModel value, $Res Function(TempRealTimeModel) then) =
      _$TempRealTimeModelCopyWithImpl<$Res, TempRealTimeModel>;
  @useResult
  $Res call({TempModel data, bool status});

  $TempModelCopyWith<$Res> get data;
}

/// @nodoc
class _$TempRealTimeModelCopyWithImpl<$Res, $Val extends TempRealTimeModel>
    implements $TempRealTimeModelCopyWith<$Res> {
  _$TempRealTimeModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TempModel,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TempModelCopyWith<$Res> get data {
    return $TempModelCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TempRealTimeModelImplCopyWith<$Res>
    implements $TempRealTimeModelCopyWith<$Res> {
  factory _$$TempRealTimeModelImplCopyWith(_$TempRealTimeModelImpl value,
          $Res Function(_$TempRealTimeModelImpl) then) =
      __$$TempRealTimeModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TempModel data, bool status});

  @override
  $TempModelCopyWith<$Res> get data;
}

/// @nodoc
class __$$TempRealTimeModelImplCopyWithImpl<$Res>
    extends _$TempRealTimeModelCopyWithImpl<$Res, _$TempRealTimeModelImpl>
    implements _$$TempRealTimeModelImplCopyWith<$Res> {
  __$$TempRealTimeModelImplCopyWithImpl(_$TempRealTimeModelImpl _value,
      $Res Function(_$TempRealTimeModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
    Object? status = null,
  }) {
    return _then(_$TempRealTimeModelImpl(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TempModel,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TempRealTimeModelImpl implements _TempRealTimeModel {
  const _$TempRealTimeModelImpl({required this.data, required this.status});

  factory _$TempRealTimeModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TempRealTimeModelImplFromJson(json);

  @override
  final TempModel data;
  @override
  final bool status;

  @override
  String toString() {
    return 'TempRealTimeModel(data: $data, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TempRealTimeModelImpl &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.status, status) || other.status == status));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data, status);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TempRealTimeModelImplCopyWith<_$TempRealTimeModelImpl> get copyWith =>
      __$$TempRealTimeModelImplCopyWithImpl<_$TempRealTimeModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TempRealTimeModelImplToJson(
      this,
    );
  }
}

abstract class _TempRealTimeModel implements TempRealTimeModel {
  const factory _TempRealTimeModel(
      {required final TempModel data,
      required final bool status}) = _$TempRealTimeModelImpl;

  factory _TempRealTimeModel.fromJson(Map<String, dynamic> json) =
      _$TempRealTimeModelImpl.fromJson;

  @override
  TempModel get data;
  @override
  bool get status;
  @override
  @JsonKey(ignore: true)
  _$$TempRealTimeModelImplCopyWith<_$TempRealTimeModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
