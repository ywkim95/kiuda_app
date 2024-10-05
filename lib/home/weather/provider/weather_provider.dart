import 'dart:async';
import 'dart:developer';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:podo_darae_lab/auth/model/user_model.dart';
import 'package:podo_darae_lab/auth/provider/user_me_provider.dart';
import 'package:podo_darae_lab/common/provider/room_id_provider.dart';
import 'package:podo_darae_lab/home/weather/model/weather_data_model.dart';
import 'package:podo_darae_lab/home/weather/repository/weather_repository.dart';

/// 현재의 로직은 하나의 농장을 기준으로 작성되었음,
/// 여러 농장의 리스트를 넘어가며 자료를 호출하고 싶은 경우 변경 해야할 것으로 보임

// 선언된 WeatherStateNotifier를 사용하기위한 변수
final weatherProvider =
    StateNotifierProvider<WeatherStateNotifier, WeatherDataModelBase?>(
        (ref) => WeatherStateNotifier(ref: ref));

// StateNotifier로 선언하고 Generic을 WeatherDataModelBase? 로 선언한다.
// Base로 선언한 이유는 클래스의 상태(Loading, Error 등)로 구분하기 위하여 Base로 선언
// ?를 붙인 이유는 state가 null값으로 받을 수 있도록 처리하기 위하여
class WeatherStateNotifier extends StateNotifier<WeatherDataModelBase?> {
  WeatherDataModel _weatherData = WeatherDataModel();
  WeatherDataModel get weatherData => _weatherData;
  Ref ref;
  // 1시간마다 날씨정보를 받아오기위한 Timer
  // late Timer _timer;
  WeatherStateNotifier({
    required this.ref,
  }) : super(WeatherDataModelLoading());
  // 데이터를 받고 Model에 담기위한 로직
  Future<void> fetchWeather() async {
    try {
      // if (_timer.isActive) {
      //   _timer.cancel();
      // }
      // state를 Loading으로 변경한다.
      state = WeatherDataModelLoading();
      var dt = DateTime.now().toUtc().add(const Duration(hours: 8));
      String address = '';
      // [23/09/21] regionCode를 강제로 수원 매탄2동으로 설정하였다. 추후에 해당 농장의 코드 또는 주소를 받아 입력할 예정
      final userMe = ref.watch(userMeProvider.notifier).state;
      if (userMe is UserModel) {
        final roomId = ref.read(roomIdProvider);
        address = userMe.gateways
            .firstWhere((element) =>
                roomId ==
                '${element.countryId}${element.areaId}${element.gatewayId}')
            .location;

        final regionInfo = await ref
            .read(userMeProvider.notifier)
            .fetchWeatherAddress(address);

        /// 날씨정보 호출을 위한 queries선언
        /// 초단기 예보조회가 문제없이 동작할 수 있도록 1시간전의 데이터를 가져와 현재시간의 데이터를 매핑한다.
        var queries = {
          'serviceKey': dotenv.env['API_KEY'],
          'pageNo': '1',
          'numOfRows': '60',
          'dataType': 'JSON',
          'base_date': DateFormat('yyyyMMdd').format(dt),
          'base_time': '${DateFormat('HH').format(dt)}00',
          'nx': regionInfo.gridX,
          'ny': regionInfo.gridY,
        };
        // getWeatherData를 통하여 데이터를 받아온다.
        _weatherData =
            await ref.read(weatherRepositoryProvider).getWeatherData(queries);
        // state를 Model로 변경한다.
        state = _weatherData;
      }
    } catch (e, stack) {
      // state를 Error로 변경한다.
      // log(e.toString());
      log(stack.toString());
      state = WeatherDataModelError(message: '날씨 데이터를 갱신하는데 실패했습니다.');
    }
  }

  // 로그아웃 시 Timer가 계속 실행되지 않도록 처리
  // void stopTimer() {
  //   _timer.cancel();
  // }
}
