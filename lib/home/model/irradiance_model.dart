import 'package:freezed_annotation/freezed_annotation.dart';

part 'irradiance_model.g.dart';
part 'irradiance_model.freezed.dart';

@freezed
class IrradianceModel with _$IrradianceModel {
  const factory IrradianceModel({
    required int id,
    required String date,
    required int dataCount,
    required double accumulatedIrradiance,
    required int deviceId,
  }) = _IrradianceModel;

  factory IrradianceModel.fromJson(Map<String, dynamic> json) =>
      _$IrradianceModelFromJson(json);
}
