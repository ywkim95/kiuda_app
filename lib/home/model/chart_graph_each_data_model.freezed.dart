// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chart_graph_each_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChartGraphEachDataModel _$ChartGraphEachDataModelFromJson(
    Map<String, dynamic> json) {
  return _ChartGraphEachDataModel.fromJson(json);
}

/// @nodoc
mixin _$ChartGraphEachDataModel {
  double get min => throw _privateConstructorUsedError;
  double get max => throw _privateConstructorUsedError;
  double get average => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChartGraphEachDataModelCopyWith<ChartGraphEachDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChartGraphEachDataModelCopyWith<$Res> {
  factory $ChartGraphEachDataModelCopyWith(ChartGraphEachDataModel value,
          $Res Function(ChartGraphEachDataModel) then) =
      _$ChartGraphEachDataModelCopyWithImpl<$Res, ChartGraphEachDataModel>;
  @useResult
  $Res call({double min, double max, double average});
}

/// @nodoc
class _$ChartGraphEachDataModelCopyWithImpl<$Res,
        $Val extends ChartGraphEachDataModel>
    implements $ChartGraphEachDataModelCopyWith<$Res> {
  _$ChartGraphEachDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? max = null,
    Object? average = null,
  }) {
    return _then(_value.copyWith(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
      average: null == average
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChartGraphEachDataModelImplCopyWith<$Res>
    implements $ChartGraphEachDataModelCopyWith<$Res> {
  factory _$$ChartGraphEachDataModelImplCopyWith(
          _$ChartGraphEachDataModelImpl value,
          $Res Function(_$ChartGraphEachDataModelImpl) then) =
      __$$ChartGraphEachDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double min, double max, double average});
}

/// @nodoc
class __$$ChartGraphEachDataModelImplCopyWithImpl<$Res>
    extends _$ChartGraphEachDataModelCopyWithImpl<$Res,
        _$ChartGraphEachDataModelImpl>
    implements _$$ChartGraphEachDataModelImplCopyWith<$Res> {
  __$$ChartGraphEachDataModelImplCopyWithImpl(
      _$ChartGraphEachDataModelImpl _value,
      $Res Function(_$ChartGraphEachDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? max = null,
    Object? average = null,
  }) {
    return _then(_$ChartGraphEachDataModelImpl(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as double,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as double,
      average: null == average
          ? _value.average
          : average // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChartGraphEachDataModelImpl implements _ChartGraphEachDataModel {
  const _$ChartGraphEachDataModelImpl(
      {required this.min, required this.max, required this.average});

  factory _$ChartGraphEachDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChartGraphEachDataModelImplFromJson(json);

  @override
  final double min;
  @override
  final double max;
  @override
  final double average;

  @override
  String toString() {
    return 'ChartGraphEachDataModel(min: $min, max: $max, average: $average)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChartGraphEachDataModelImpl &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.average, average) || other.average == average));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, min, max, average);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChartGraphEachDataModelImplCopyWith<_$ChartGraphEachDataModelImpl>
      get copyWith => __$$ChartGraphEachDataModelImplCopyWithImpl<
          _$ChartGraphEachDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChartGraphEachDataModelImplToJson(
      this,
    );
  }
}

abstract class _ChartGraphEachDataModel implements ChartGraphEachDataModel {
  const factory _ChartGraphEachDataModel(
      {required final double min,
      required final double max,
      required final double average}) = _$ChartGraphEachDataModelImpl;

  factory _ChartGraphEachDataModel.fromJson(Map<String, dynamic> json) =
      _$ChartGraphEachDataModelImpl.fromJson;

  @override
  double get min;
  @override
  double get max;
  @override
  double get average;
  @override
  @JsonKey(ignore: true)
  _$$ChartGraphEachDataModelImplCopyWith<_$ChartGraphEachDataModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
