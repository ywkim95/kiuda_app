import 'package:freezed_annotation/freezed_annotation.dart';

part 'set_user_custom_value_dto.g.dart';
part 'set_user_custom_value_dto.freezed.dart';

@freezed
class SetUserCustomValueDto with _$SetUserCustomValueDto {
  const factory SetUserCustomValueDto({
    required int id,
    required int manualValue,
    required int gab,
    required String memo,
  }) = _SetUserCustomValueDto;

  factory SetUserCustomValueDto.fromJson(Map<String, dynamic> json) =>
      _$SetUserCustomValueDtoFromJson(json);
}
