import 'package:freezed_annotation/freezed_annotation.dart';

part 'fcm_model.freezed.dart';
part 'fcm_model.g.dart';

@freezed
abstract class FCMModel with _$FCMModel {
  const factory FCMModel({
    required String token,
    required String clientInfo,
  }) = _FCMModel;

  factory FCMModel.fromJson(Map<String, dynamic> json) =>
      _$FCMModelFromJson(json);
}
