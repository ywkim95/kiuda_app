import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podo_darae_lab/common/const/data_const.dart';
import 'package:podo_darae_lab/common/dio/dio.dart';
import 'package:podo_darae_lab/home/model/temp_result_data_model.dart';
import 'package:retrofit/retrofit.dart';

part 'temp_result_data_repository.g.dart';

final tempResultDataRepositoryProvider = Provider(((ref) {
  final dio = ref.watch(dioProvider);

  return TempResultDataRepository(dio, baseUrl: 'http://$ip');
}));

@RestApi()
abstract class TempResultDataRepository {
  factory TempResultDataRepository(Dio dio, {String baseUrl}) =
      _TempResultDataRepository;

  @GET('/tableAndGraph/temp/{deviceId}/{timeUnit}')
  @Headers({
    'accessToken': 'true',
  })
  Future<TempResultDataModel> getTempResultData({
    @Path() required String deviceId,
    @Path() required String timeUnit,
    @Query('startDate') required String startDate,
    @Query('endDate') required String endDate,
  });
}
