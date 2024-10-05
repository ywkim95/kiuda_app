import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podo_darae_lab/home/model/temp_model.dart';

part 'temp_result_data_model.freezed.dart';
part 'temp_result_data_model.g.dart';

@freezed
class TempResultDataModel with _$TempResultDataModel {
  const factory TempResultDataModel({
    required List<TempModel> tableAndGraph,
  }) = _TempResultDataModel;

  factory TempResultDataModel.fromJson(Map<String, dynamic> json) =>
      _$TempResultDataModelFromJson(json);
}
