// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'temp_model.freezed.dart';
part 'temp_model.g.dart';

@freezed
class TempModel with _$TempModel {
  const factory TempModel({
    required int id,
    required String createdAt,
    required int deviceId,
    required double kPa_Avg_1,
    required double kPa_Avg_2,
    required double kPa_Avg_3,
    required double kPa_Avg_4,
    required double kPa_Avg_5,
    required double kPa_Avg_6,
    required double kPa_Avg_7,
    required double kPa_Avg_8,
    required double kPa_Avg_9,
    required double kPa_Avg_10,
    required double kPa_Avg_11,
    required double kPa_Avg_12,
    required double SoilTemp_Avg_1,
    required double SoilTemp_Avg_2,
    required double SoilTemp_Avg_3,
    required double SoilTemp_Avg_4,
    required double SoilTemp_Avg_5,
    required double SoilTemp_Avg_6,
    required double SoilTemp_Avg_7,
    required double SoilTemp_Avg_8,
    required double SoilTemp_Avg_9,
    required double SoilTemp_Avg_10,
    required double SoilTemp_Avg_11,
    required double SoilTemp_Avg_12,
  }) = _TempModel;

  factory TempModel.fromJson(Map<String, dynamic> json) =>
      _$TempModelFromJson(json);
}
