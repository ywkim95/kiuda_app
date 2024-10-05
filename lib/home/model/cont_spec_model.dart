import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podo_darae_lab/home/enum/controller_spec_enum.dart';
import 'package:podo_darae_lab/home/model/cont_spec_step_model.dart';

part 'cont_spec_model.g.dart';
part 'cont_spec_model.freezed.dart';

@freezed
class ContSpecModel with _$ContSpecModel {
  const factory ContSpecModel({
    required int id,
    required String name,
    String? varName,
    required ControllerSpecEnum controllerType,
    List<ContSpecStepModel>? specificationSteps,
    String? description,
    required String unit,
    required double min,
    required double max,
    required double step,
    required bool useYn,
  }) = _ContSpecModel;

  factory ContSpecModel.fromJson(Map<String, dynamic> json) =>
      _$ContSpecModelFromJson(json);
}
