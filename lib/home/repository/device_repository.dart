import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podo_darae_lab/common/const/data_const.dart';
import 'package:podo_darae_lab/common/dio/dio.dart';
import 'package:podo_darae_lab/home/model/device_model.dart';
import 'package:retrofit/retrofit.dart';

part 'device_repository.g.dart';

final deviceRepositoryProvider = Provider<DeviceRepository>((ref) {
  final dio = ref.watch(dioProvider);

  final repository = DeviceRepository(dio, baseUrl: 'http://$ip/devices');
  return repository;
});

@RestApi()
abstract class DeviceRepository {
  factory DeviceRepository(Dio dio, {String baseUrl}) = _DeviceRepository;

  @GET('/roomId/{roomId}')
  @Headers({
    'accessToken': 'true',
  })
  Future<List<DeviceModel>> getDevices({
    @Path() required String roomId,
  });
}
