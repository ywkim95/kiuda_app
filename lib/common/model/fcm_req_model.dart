import 'package:freezed_annotation/freezed_annotation.dart';

part 'fcm_req_model.freezed.dart';
part 'fcm_req_model.g.dart';

@freezed
abstract class FcmReqModel with _$FcmReqModel {
  const factory FcmReqModel({
    required String message,
  }) = _FcmReqModel;

  factory FcmReqModel.fromJson(Map<String, dynamic> json) =>
      _$FcmReqModelFromJson(json);
}
