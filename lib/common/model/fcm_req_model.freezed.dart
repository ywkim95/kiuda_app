// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fcm_req_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FcmReqModel _$FcmReqModelFromJson(Map<String, dynamic> json) {
  return _FcmReqModel.fromJson(json);
}

/// @nodoc
mixin _$FcmReqModel {
  String get message => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FcmReqModelCopyWith<FcmReqModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FcmReqModelCopyWith<$Res> {
  factory $FcmReqModelCopyWith(
          FcmReqModel value, $Res Function(FcmReqModel) then) =
      _$FcmReqModelCopyWithImpl<$Res, FcmReqModel>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$FcmReqModelCopyWithImpl<$Res, $Val extends FcmReqModel>
    implements $FcmReqModelCopyWith<$Res> {
  _$FcmReqModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FcmReqModelImplCopyWith<$Res>
    implements $FcmReqModelCopyWith<$Res> {
  factory _$$FcmReqModelImplCopyWith(
          _$FcmReqModelImpl value, $Res Function(_$FcmReqModelImpl) then) =
      __$$FcmReqModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FcmReqModelImplCopyWithImpl<$Res>
    extends _$FcmReqModelCopyWithImpl<$Res, _$FcmReqModelImpl>
    implements _$$FcmReqModelImplCopyWith<$Res> {
  __$$FcmReqModelImplCopyWithImpl(
      _$FcmReqModelImpl _value, $Res Function(_$FcmReqModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FcmReqModelImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FcmReqModelImpl implements _FcmReqModel {
  const _$FcmReqModelImpl({required this.message});

  factory _$FcmReqModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FcmReqModelImplFromJson(json);

  @override
  final String message;

  @override
  String toString() {
    return 'FcmReqModel(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FcmReqModelImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FcmReqModelImplCopyWith<_$FcmReqModelImpl> get copyWith =>
      __$$FcmReqModelImplCopyWithImpl<_$FcmReqModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FcmReqModelImplToJson(
      this,
    );
  }
}

abstract class _FcmReqModel implements FcmReqModel {
  const factory _FcmReqModel({required final String message}) =
      _$FcmReqModelImpl;

  factory _FcmReqModel.fromJson(Map<String, dynamic> json) =
      _$FcmReqModelImpl.fromJson;

  @override
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$FcmReqModelImplCopyWith<_$FcmReqModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
