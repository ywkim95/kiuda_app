import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_custom_value_model.g.dart';
part 'user_custom_value_model.freezed.dart';

@freezed
class UserCustomValueModel with _$UserCustomValueModel {
  const factory UserCustomValueModel({
    required int id,
    required int manualValue,
    required int gab,
    required String memo,
  }) = _UserCustomValueModel;

  factory UserCustomValueModel.fromJson(Map<String, dynamic> json) =>
      _$UserCustomValueModelFromJson(json);
}
