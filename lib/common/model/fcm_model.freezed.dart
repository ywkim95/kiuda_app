// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fcm_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FCMModel _$FCMModelFromJson(Map<String, dynamic> json) {
  return _FCMModel.fromJson(json);
}

/// @nodoc
mixin _$FCMModel {
  String get token => throw _privateConstructorUsedError;
  String get clientInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FCMModelCopyWith<FCMModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FCMModelCopyWith<$Res> {
  factory $FCMModelCopyWith(FCMModel value, $Res Function(FCMModel) then) =
      _$FCMModelCopyWithImpl<$Res, FCMModel>;
  @useResult
  $Res call({String token, String clientInfo});
}

/// @nodoc
class _$FCMModelCopyWithImpl<$Res, $Val extends FCMModel>
    implements $FCMModelCopyWith<$Res> {
  _$FCMModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? clientInfo = null,
  }) {
    return _then(_value.copyWith(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      clientInfo: null == clientInfo
          ? _value.clientInfo
          : clientInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FCMModelImplCopyWith<$Res>
    implements $FCMModelCopyWith<$Res> {
  factory _$$FCMModelImplCopyWith(
          _$FCMModelImpl value, $Res Function(_$FCMModelImpl) then) =
      __$$FCMModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String token, String clientInfo});
}

/// @nodoc
class __$$FCMModelImplCopyWithImpl<$Res>
    extends _$FCMModelCopyWithImpl<$Res, _$FCMModelImpl>
    implements _$$FCMModelImplCopyWith<$Res> {
  __$$FCMModelImplCopyWithImpl(
      _$FCMModelImpl _value, $Res Function(_$FCMModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? token = null,
    Object? clientInfo = null,
  }) {
    return _then(_$FCMModelImpl(
      token: null == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      clientInfo: null == clientInfo
          ? _value.clientInfo
          : clientInfo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FCMModelImpl implements _FCMModel {
  const _$FCMModelImpl({required this.token, required this.clientInfo});

  factory _$FCMModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$FCMModelImplFromJson(json);

  @override
  final String token;
  @override
  final String clientInfo;

  @override
  String toString() {
    return 'FCMModel(token: $token, clientInfo: $clientInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FCMModelImpl &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.clientInfo, clientInfo) ||
                other.clientInfo == clientInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, token, clientInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FCMModelImplCopyWith<_$FCMModelImpl> get copyWith =>
      __$$FCMModelImplCopyWithImpl<_$FCMModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FCMModelImplToJson(
      this,
    );
  }
}

abstract class _FCMModel implements FCMModel {
  const factory _FCMModel(
      {required final String token,
      required final String clientInfo}) = _$FCMModelImpl;

  factory _FCMModel.fromJson(Map<String, dynamic> json) =
      _$FCMModelImpl.fromJson;

  @override
  String get token;
  @override
  String get clientInfo;
  @override
  @JsonKey(ignore: true)
  _$$FCMModelImplCopyWith<_$FCMModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
