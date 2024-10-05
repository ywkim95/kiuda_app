import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podo_darae_lab/common/const/data_const.dart';
import 'package:podo_darae_lab/common/dio/dio.dart';
import 'package:podo_darae_lab/home/model/sensor_device_model.dart';
import 'package:retrofit/retrofit.dart';

part 'sensor_device_repository.g.dart';

final sensorDeviceRepositoryProvider = Provider<SensorDeviceRepository>((ref) {
  final dio = ref.watch(dioProvider);

  final repository =
      SensorDeviceRepository(dio, baseUrl: 'http://$ip/sensors/deviceSensors');
  return repository;
});

@RestApi()
abstract class SensorDeviceRepository {
  factory SensorDeviceRepository(Dio dio, {String baseUrl}) =
      _SensorDeviceRepository;

  @GET('/device/{deviceId}')
  @Headers({
    'accessToken': 'true',
  })
  Future<List<SensorDeviceModel>> getSensorDevices({
    @Path() required String deviceId,
  });
}
