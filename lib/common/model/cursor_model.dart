import 'package:freezed_annotation/freezed_annotation.dart';

part 'cursor_model.g.dart';
part 'cursor_model.freezed.dart';

@freezed
class CursorModel with _$CursorModel {
  const factory CursorModel({
    int? after,
  }) = _CursorModel;

  factory CursorModel.fromJson(Map<String, dynamic> json) =>
      _$CursorModelFromJson(json);
}
