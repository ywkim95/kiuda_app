import 'package:json_annotation/json_annotation.dart';

part 'refresh_response_model.g.dart';

@JsonSerializable()
class RefreshResponseModel {
  RefreshResponseModel({
    required this.refreshToken,
  });
  final String refreshToken;
  factory RefreshResponseModel.fromJson(Map<String, dynamic> json) =>
      _$RefreshResponseModelFromJson(json);
}
