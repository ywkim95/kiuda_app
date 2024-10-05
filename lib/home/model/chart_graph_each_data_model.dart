import 'package:freezed_annotation/freezed_annotation.dart';

part 'chart_graph_each_data_model.g.dart';
part 'chart_graph_each_data_model.freezed.dart';

@freezed
class ChartGraphEachDataModel with _$ChartGraphEachDataModel {
  const factory ChartGraphEachDataModel({
    required double min,
    required double max,
    required double average,
  }) = _ChartGraphEachDataModel;

  factory ChartGraphEachDataModel.fromJson(Map<String, dynamic> json) =>
      _$ChartGraphEachDataModelFromJson(json);
}
