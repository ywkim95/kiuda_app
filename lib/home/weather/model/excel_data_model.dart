import 'package:json_annotation/json_annotation.dart';
// 선언된 json_annotation의 값을 담아줄 파일
part 'excel_data_model.g.dart';

// json_annotation을 선언하여 model을 fromjson 및 tojson변환 로직을 자동으로 생성해준다.
@JsonSerializable()
class ExcelDataModel {
  final String sort;
  final dynamic code;
  final String province;
  String? city;
  String? village;
  final String gridX;
  final String gridY;
  final String longitudeH;
  final String longitudeM;
  final String longitudeS;
  final String latitudeH;
  final String latitudeM;
  final String latitudeS;
  final String longitudeS100;
  final String latitudeS100;
  final dynamic update;
  ExcelDataModel({
    required this.sort,
    required this.code,
    required this.province,
    this.city,
    this.village,
    required this.gridX,
    required this.gridY,
    required this.longitudeH,
    required this.longitudeM,
    required this.longitudeS,
    required this.latitudeH,
    required this.latitudeM,
    required this.latitudeS,
    required this.longitudeS100,
    required this.latitudeS100,
    this.update,
  });
  // json_annotation으로 fromjson생성
  factory ExcelDataModel.fromJson(Map<String, dynamic> json) =>
      _$ExcelDataModelFromJson(json);
  // json_annotation으로 tojson생성
  Map<String, dynamic> toJson() => _$ExcelDataModelToJson(this);
}
