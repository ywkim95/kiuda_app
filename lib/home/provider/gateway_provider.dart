import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podo_darae_lab/home/model/gateway_model.dart';

final gatewayProvider =
    StateNotifierProvider<GatewayStateNotifier, GatewayModel?>((ref) {
  return GatewayStateNotifier(ref: ref);
});

class GatewayStateNotifier extends StateNotifier<GatewayModel?> {
  GatewayStateNotifier({required this.ref}) : super(null);
  Ref ref;
  void setGateway(GatewayModel gateway) {
    state = gateway;
  }
}
