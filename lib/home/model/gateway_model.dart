import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:podo_darae_lab/home/model/device_model.dart';

part 'gateway_model.g.dart';
part 'gateway_model.freezed.dart';

@freezed
class GatewayModel with _$GatewayModel {
  const factory GatewayModel({
    required int id,
    required String countryId,
    required String areaId,
    required String gatewayId,
    required String location,
    required String name,
    List<DeviceModel>? devices,
  }) = _GatewayModel;

  factory GatewayModel.fromJson(Map<String, dynamic> json) =>
      _$GatewayModelFromJson(json);
}
