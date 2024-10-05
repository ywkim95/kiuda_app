import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podo_darae_lab/home/model/chart_graph_each_data_model.dart';

part 'chart_graph_model.g.dart';
part 'chart_graph_model.freezed.dart';

@freezed
class ChartGraphModel with _$ChartGraphModel {
  const factory ChartGraphModel({
    required int id,
    required String startDate,
    required String endDate,
    required int dataCount,
    ChartGraphEachDataModel? s1,
    ChartGraphEachDataModel? s2,
    ChartGraphEachDataModel? s3,
    ChartGraphEachDataModel? s4,
    ChartGraphEachDataModel? s5,
    ChartGraphEachDataModel? s6,
    ChartGraphEachDataModel? s7,
    ChartGraphEachDataModel? s8,
    ChartGraphEachDataModel? s9,
    ChartGraphEachDataModel? s10,
    ChartGraphEachDataModel? s11,
    ChartGraphEachDataModel? s12,
    ChartGraphEachDataModel? s13,
    ChartGraphEachDataModel? s14,
    ChartGraphEachDataModel? s15,
    ChartGraphEachDataModel? s16,
    ChartGraphEachDataModel? s17,
    ChartGraphEachDataModel? s18,
    ChartGraphEachDataModel? s19,
    ChartGraphEachDataModel? s20,
  }) = _ChartGraphModel;

  factory ChartGraphModel.fromJson(Map<String, dynamic> json) =>
      _$ChartGraphModelFromJson(json);
}
