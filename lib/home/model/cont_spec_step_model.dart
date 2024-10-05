import 'package:freezed_annotation/freezed_annotation.dart';

part 'cont_spec_step_model.g.dart';
part 'cont_spec_step_model.freezed.dart';

@freezed
class ContSpecStepModel with _$ContSpecStepModel {
  const factory ContSpecStepModel({
    required double value,
    required String label,
    required bool useYn,
  }) = _ContSpecStepModel;

  factory ContSpecStepModel.fromJson(Map<String, dynamic> json) =>
      _$ContSpecStepModelFromJson(json);
}
