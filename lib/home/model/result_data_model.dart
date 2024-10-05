import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podo_darae_lab/home/model/chart_graph_model.dart';
import 'package:podo_darae_lab/home/model/irradiance_model.dart';

part 'result_data_model.g.dart';
part 'result_data_model.freezed.dart';

@freezed
class ResultDataModel with _$ResultDataModel {
  const factory ResultDataModel({
    required List<ChartGraphModel> tableAndGraph,
    required IrradianceModel irradiance,
  }) = _ResultDataModel;

  factory ResultDataModel.fromJson(Map<String, dynamic> json) =>
      _$ResultDataModelFromJson(json);
}
