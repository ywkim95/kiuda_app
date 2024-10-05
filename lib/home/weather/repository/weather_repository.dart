// retrofit으로 generate된 함수를 담아줄 파일
import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:podo_darae_lab/common/const/data_const.dart';
import 'package:podo_darae_lab/common/dio/dio.dart';
import 'package:podo_darae_lab/home/weather/model/weather_data_model.dart';
import 'package:retrofit/retrofit.dart';

part 'weather_repository.g.dart';

// 선언된 WeatherRepository를 호출하기 위한 변수
final weatherRepositoryProvider = Provider<WeatherRepository>((ref) {
  final dio = ref.watch(dioProvider);
  final repository = WeatherRepository(dio, baseUrl: 'http://$ip');
  return repository;
});

// retrofit으로 RestApi 선언
// repository를 abstract클래스로 선언할 수 있도록 변경
@RestApi()
abstract class WeatherRepository {
  factory WeatherRepository(Dio dio, {String baseUrl}) = _WeatherRepository;
  // 날씨 정보(초단기 예보 조회)를 가져온다.
  @GET('/weatherApi')
  @Headers({
    'accessToken': 'true',
  })
  Future<WeatherDataModel> getWeatherData(
    @Queries() Map<String, dynamic> queries, // 필요한 값을 Map에 담아준다.
  );
}
