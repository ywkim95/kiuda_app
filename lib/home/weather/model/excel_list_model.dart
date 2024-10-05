import 'package:json_annotation/json_annotation.dart';
import 'package:podo_darae_lab/home/weather/model/excel_data_model.dart';
// 선언된 json_annotation의 값을 담아줄 파일
part 'excel_list_model.g.dart';

// json_annotation을 선언하여 model을 fromjson 및 tojson변환 로직을 자동으로 생성해준다.
@JsonSerializable()
class ExcelListModel {
  final List<ExcelDataModel> items;
  ExcelListModel({
    required this.items,
  });
  // json_annotation으로 fromjson생성
  factory ExcelListModel.fromJson(Map<String, dynamic> json) =>
      _$ExcelListModelFromJson(json);
  // json_annotation으로 tojson생성
  Map<String, dynamic> toJson() => _$ExcelListModelToJson(this);
}
