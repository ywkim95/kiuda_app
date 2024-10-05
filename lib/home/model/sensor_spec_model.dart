import 'package:freezed_annotation/freezed_annotation.dart';

part 'sensor_spec_model.g.dart';
part 'sensor_spec_model.freezed.dart';

@freezed
class SensorSpecModel with _$SensorSpecModel {
  const factory SensorSpecModel({
    required String name,
    String? varName,
    String? description,
    required String model,
    required String manufacturer,
    int? decimalPlaces,
    String? graphMode,
    required bool useYn,
    required String unit,
    required int minValue,
    required int maxValue,
    required int lowWarningStart,
    required int lowWarningEnd,
    required int stableStart,
    required int stableEnd,
    required int highWarningStart,
    required int highWarningEnd,
    required int dangerStart,
    required int dangerEnd,
  }) = _SensorSpecModel;

  factory SensorSpecModel.fromJson(Map<String, dynamic> json) =>
      _$SensorSpecModelFromJson(json);
}
