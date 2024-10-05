import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podo_darae_lab/common/const/data_const.dart';
import 'package:podo_darae_lab/common/dio/dio.dart';
import 'package:podo_darae_lab/home/model/cont_device_model.dart';
import 'package:podo_darae_lab/home/model/sensor_device_model.dart';
import 'package:retrofit/retrofit.dart';

part 'cont_device_repository.g.dart';

final contDeviceRepositoryProvider = Provider<ContDeviceRepository>((ref) {
  final dio = ref.watch(dioProvider);

  final repository = ContDeviceRepository(dio,
      baseUrl: 'http://$ip/controllers/deviceControllers');
  return repository;
});

@RestApi()
abstract class ContDeviceRepository {
  factory ContDeviceRepository(Dio dio, {String baseUrl}) =
      _ContDeviceRepository;

  @GET('/device/{deviceId}')
  @Headers({
    'accessToken': 'true',
  })
  Future<List<ContDeviceModel>> getContDevices({
    @Path() required String deviceId,
  });

  @GET('/sensorList/{deviceId}')
  @Headers({
    'accessToken': 'true',
  })
  Future<List<SensorDeviceModel>> getSensorDevicesByMappingId({
    @Path() required String deviceId,
  });

  @PATCH('/{deviceControllerId}')
  @Headers({
    'accessToken': 'true',
  })
  Future<ContDeviceModel> setContDevice({
    @Path() required String deviceControllerId,
    @Body() required Map<String, dynamic> body,
  });
}
