import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podo_darae_lab/home/model/cont_spec_model.dart';
import 'package:podo_darae_lab/home/model/user_custom_value_model.dart';

part 'cont_device_model.g.dart';
part 'cont_device_model.freezed.dart';

@freezed
class ContDeviceModel with _$ContDeviceModel {
  const factory ContDeviceModel({
    required int id,
    required String name,
    String? varName,
    String? location,
    required bool useYn,
    required int mappingSensorId,
    required int connectedDeviceId,
    ContSpecModel? specification,
    List<UserCustomValueModel>? userCustomValues,
  }) = _ContDeviceModel;

  factory ContDeviceModel.fromJson(Map<String, dynamic> json) =>
      _$ContDeviceModelFromJson(json);
}
