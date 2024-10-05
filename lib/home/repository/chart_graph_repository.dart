import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podo_darae_lab/common/const/data_const.dart';
import 'package:podo_darae_lab/common/dio/dio.dart';
import 'package:podo_darae_lab/home/enum/time_unit_enum.dart';
import 'package:podo_darae_lab/home/model/result_data_model.dart';
import 'package:retrofit/retrofit.dart';

part 'chart_graph_repository.g.dart';

final chartGraphRepositoryProvider = Provider((ref) {
  final dio = ref.watch(dioProvider);

  return ChartGraphRepository(dio, baseUrl: 'http://$ip');
});

@RestApi()
abstract class ChartGraphRepository {
  factory ChartGraphRepository(Dio dio, {String baseUrl}) =
      _ChartGraphRepository;
  @GET('/tableAndGraph/{deviceId}/{timeUnit}')
  @Headers({
    'accessToken': 'true',
  })
  Future<ResultDataModel> getChartGraphData({
    @Path() required String deviceId,
    @Path() required TimeUnitEnum timeUnit,
    @Query('startDate') required String startDate,
    @Query('endDate') required String endDate,
  });
}
