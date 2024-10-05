import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podo_darae_lab/auth/enum/permission_enum.dart';
import 'package:podo_darae_lab/auth/enum/roles_enum.dart';
import 'package:podo_darae_lab/home/model/gateway_model.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

abstract class UserModelBase {}

class UserModelError extends UserModelBase {
  UserModelError({
    required this.message,
  });
  final String message;
}

class UserModelLoading extends UserModelBase {}

@freezed
class UserModel extends UserModelBase with _$UserModel {
  const factory UserModel({
    required int id,
    required String email,
    required String name,
    required String address,
    required String phoneNumber,
    required Roles roles,
    required PermissionEnum permission,
    required String lastLoginDate,
    required String lastLoginIp,
    required List<GatewayModel> gateways,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
