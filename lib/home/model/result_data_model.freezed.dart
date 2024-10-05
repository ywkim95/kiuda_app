// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'result_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResultDataModel _$ResultDataModelFromJson(Map<String, dynamic> json) {
  return _ResultDataModel.fromJson(json);
}

/// @nodoc
mixin _$ResultDataModel {
  List<ChartGraphModel> get tableAndGraph => throw _privateConstructorUsedError;
  IrradianceModel get irradiance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResultDataModelCopyWith<ResultDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResultDataModelCopyWith<$Res> {
  factory $ResultDataModelCopyWith(
          ResultDataModel value, $Res Function(ResultDataModel) then) =
      _$ResultDataModelCopyWithImpl<$Res, ResultDataModel>;
  @useResult
  $Res call({List<ChartGraphModel> tableAndGraph, IrradianceModel irradiance});

  $IrradianceModelCopyWith<$Res> get irradiance;
}

/// @nodoc
class _$ResultDataModelCopyWithImpl<$Res, $Val extends ResultDataModel>
    implements $ResultDataModelCopyWith<$Res> {
  _$ResultDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableAndGraph = null,
    Object? irradiance = null,
  }) {
    return _then(_value.copyWith(
      tableAndGraph: null == tableAndGraph
          ? _value.tableAndGraph
          : tableAndGraph // ignore: cast_nullable_to_non_nullable
              as List<ChartGraphModel>,
      irradiance: null == irradiance
          ? _value.irradiance
          : irradiance // ignore: cast_nullable_to_non_nullable
              as IrradianceModel,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IrradianceModelCopyWith<$Res> get irradiance {
    return $IrradianceModelCopyWith<$Res>(_value.irradiance, (value) {
      return _then(_value.copyWith(irradiance: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResultDataModelImplCopyWith<$Res>
    implements $ResultDataModelCopyWith<$Res> {
  factory _$$ResultDataModelImplCopyWith(_$ResultDataModelImpl value,
          $Res Function(_$ResultDataModelImpl) then) =
      __$$ResultDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChartGraphModel> tableAndGraph, IrradianceModel irradiance});

  @override
  $IrradianceModelCopyWith<$Res> get irradiance;
}

/// @nodoc
class __$$ResultDataModelImplCopyWithImpl<$Res>
    extends _$ResultDataModelCopyWithImpl<$Res, _$ResultDataModelImpl>
    implements _$$ResultDataModelImplCopyWith<$Res> {
  __$$ResultDataModelImplCopyWithImpl(
      _$ResultDataModelImpl _value, $Res Function(_$ResultDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableAndGraph = null,
    Object? irradiance = null,
  }) {
    return _then(_$ResultDataModelImpl(
      tableAndGraph: null == tableAndGraph
          ? _value._tableAndGraph
          : tableAndGraph // ignore: cast_nullable_to_non_nullable
              as List<ChartGraphModel>,
      irradiance: null == irradiance
          ? _value.irradiance
          : irradiance // ignore: cast_nullable_to_non_nullable
              as IrradianceModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResultDataModelImpl implements _ResultDataModel {
  const _$ResultDataModelImpl(
      {required final List<ChartGraphModel> tableAndGraph,
      required this.irradiance})
      : _tableAndGraph = tableAndGraph;

  factory _$ResultDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResultDataModelImplFromJson(json);

  final List<ChartGraphModel> _tableAndGraph;
  @override
  List<ChartGraphModel> get tableAndGraph {
    if (_tableAndGraph is EqualUnmodifiableListView) return _tableAndGraph;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tableAndGraph);
  }

  @override
  final IrradianceModel irradiance;

  @override
  String toString() {
    return 'ResultDataModel(tableAndGraph: $tableAndGraph, irradiance: $irradiance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResultDataModelImpl &&
            const DeepCollectionEquality()
                .equals(other._tableAndGraph, _tableAndGraph) &&
            (identical(other.irradiance, irradiance) ||
                other.irradiance == irradiance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_tableAndGraph), irradiance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ResultDataModelImplCopyWith<_$ResultDataModelImpl> get copyWith =>
      __$$ResultDataModelImplCopyWithImpl<_$ResultDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResultDataModelImplToJson(
      this,
    );
  }
}

abstract class _ResultDataModel implements ResultDataModel {
  const factory _ResultDataModel(
      {required final List<ChartGraphModel> tableAndGraph,
      required final IrradianceModel irradiance}) = _$ResultDataModelImpl;

  factory _ResultDataModel.fromJson(Map<String, dynamic> json) =
      _$ResultDataModelImpl.fromJson;

  @override
  List<ChartGraphModel> get tableAndGraph;
  @override
  IrradianceModel get irradiance;
  @override
  @JsonKey(ignore: true)
  _$$ResultDataModelImplCopyWith<_$ResultDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
