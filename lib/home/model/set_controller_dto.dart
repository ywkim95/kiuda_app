import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podo_darae_lab/home/model/set_user_custom_value_dto.dart';

part 'set_controller_dto.g.dart';
part 'set_controller_dto.freezed.dart';

@freezed
class SetControllerDto with _$SetControllerDto {
  const factory SetControllerDto({
    required String name,
    required String varName,
    required String location,
    required bool useYn,
    required int mappingSensorId,
    required int connectedDeviceId,
    required List<SetUserCustomValueDto> userCustomValues,
    required int device,
    required int specification,
  }) = _SetControllerDto;

  factory SetControllerDto.fromJson(Map<String, dynamic> json) =>
      _$SetControllerDtoFromJson(json);
}
