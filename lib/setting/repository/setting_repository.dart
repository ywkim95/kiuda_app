import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podo_darae_lab/common/const/data_const.dart';
import 'package:podo_darae_lab/common/dio/dio.dart';
import 'package:podo_darae_lab/home/model/device_model.dart';
import 'package:retrofit/retrofit.dart';

part 'setting_repository.g.dart';

final settingRepositoryProvider = Provider<SettingRepository>((ref) {
  final dio = ref.watch(dioProvider);
  return SettingRepository(dio, baseUrl: 'http://$ip/settings');
});

@RestApi()
abstract class SettingRepository {
  factory SettingRepository(Dio dio, {String baseUrl}) = _SettingRepository;
  @GET('/{roomId}')
  @Headers({'accessToken': 'true'})
  Future<List<DeviceModel>> getSettingValue({
    @Path() required String roomId,
  });

  @PATCH('/{roomId}')
  @Headers({'accessToken': 'true'})
  Future<Map<String, bool>> setSettingValue({
    @Path() required String roomId,
    @Body() required List<DeviceModel> body,
  });
}
