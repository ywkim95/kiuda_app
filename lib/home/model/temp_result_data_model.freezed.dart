// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'temp_result_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TempResultDataModel _$TempResultDataModelFromJson(Map<String, dynamic> json) {
  return _TempResultDataModel.fromJson(json);
}

/// @nodoc
mixin _$TempResultDataModel {
  List<TempModel> get tableAndGraph => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TempResultDataModelCopyWith<TempResultDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TempResultDataModelCopyWith<$Res> {
  factory $TempResultDataModelCopyWith(
          TempResultDataModel value, $Res Function(TempResultDataModel) then) =
      _$TempResultDataModelCopyWithImpl<$Res, TempResultDataModel>;
  @useResult
  $Res call({List<TempModel> tableAndGraph});
}

/// @nodoc
class _$TempResultDataModelCopyWithImpl<$Res, $Val extends TempResultDataModel>
    implements $TempResultDataModelCopyWith<$Res> {
  _$TempResultDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableAndGraph = null,
  }) {
    return _then(_value.copyWith(
      tableAndGraph: null == tableAndGraph
          ? _value.tableAndGraph
          : tableAndGraph // ignore: cast_nullable_to_non_nullable
              as List<TempModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TempResultDataModelImplCopyWith<$Res>
    implements $TempResultDataModelCopyWith<$Res> {
  factory _$$TempResultDataModelImplCopyWith(_$TempResultDataModelImpl value,
          $Res Function(_$TempResultDataModelImpl) then) =
      __$$TempResultDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TempModel> tableAndGraph});
}

/// @nodoc
class __$$TempResultDataModelImplCopyWithImpl<$Res>
    extends _$TempResultDataModelCopyWithImpl<$Res, _$TempResultDataModelImpl>
    implements _$$TempResultDataModelImplCopyWith<$Res> {
  __$$TempResultDataModelImplCopyWithImpl(_$TempResultDataModelImpl _value,
      $Res Function(_$TempResultDataModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tableAndGraph = null,
  }) {
    return _then(_$TempResultDataModelImpl(
      tableAndGraph: null == tableAndGraph
          ? _value._tableAndGraph
          : tableAndGraph // ignore: cast_nullable_to_non_nullable
              as List<TempModel>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TempResultDataModelImpl implements _TempResultDataModel {
  const _$TempResultDataModelImpl(
      {required final List<TempModel> tableAndGraph})
      : _tableAndGraph = tableAndGraph;

  factory _$TempResultDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$TempResultDataModelImplFromJson(json);

  final List<TempModel> _tableAndGraph;
  @override
  List<TempModel> get tableAndGraph {
    if (_tableAndGraph is EqualUnmodifiableListView) return _tableAndGraph;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tableAndGraph);
  }

  @override
  String toString() {
    return 'TempResultDataModel(tableAndGraph: $tableAndGraph)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TempResultDataModelImpl &&
            const DeepCollectionEquality()
                .equals(other._tableAndGraph, _tableAndGraph));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_tableAndGraph));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TempResultDataModelImplCopyWith<_$TempResultDataModelImpl> get copyWith =>
      __$$TempResultDataModelImplCopyWithImpl<_$TempResultDataModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TempResultDataModelImplToJson(
      this,
    );
  }
}

abstract class _TempResultDataModel implements TempResultDataModel {
  const factory _TempResultDataModel(
          {required final List<TempModel> tableAndGraph}) =
      _$TempResultDataModelImpl;

  factory _TempResultDataModel.fromJson(Map<String, dynamic> json) =
      _$TempResultDataModelImpl.fromJson;

  @override
  List<TempModel> get tableAndGraph;
  @override
  @JsonKey(ignore: true)
  _$$TempResultDataModelImplCopyWith<_$TempResultDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
