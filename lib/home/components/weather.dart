import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podo_darae_lab/auth/provider/user_me_provider.dart';
import 'package:podo_darae_lab/common/const/colors_const.dart';
import 'package:podo_darae_lab/common/utilities/data_utillities.dart';
import 'package:podo_darae_lab/home/provider/gateway_provider.dart';
import 'package:podo_darae_lab/home/weather/model/weather_data_model.dart';
import 'package:podo_darae_lab/home/weather/provider/weather_provider.dart';

class Weather extends ConsumerWidget {
  Weather({Key? key}) : super(key: key);
  final weatherTS = TextStyle(
    fontSize: 15.sp,
    color: SETTING_FONT_COLOR,
  );
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final weather = ref.watch(weatherProvider);
    final gateway = ref.watch(gatewayProvider);

    if (weather == null) {
      return const Text('날씨정보가 없습니다.');
    }
    if (weather is WeatherDataModelLoading) {
      return const Text('날씨정보를 불러오는 중입니다...');
    }
    if (weather is WeatherDataModelError) {
      return InkWell(
        onTap: () async {
          await ref.read(userMeProvider.notifier).getWeatherData();
        },
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('날씨정보 오류'),
            Icon(Icons.refresh, size: 16.sp),
          ],
        ),
      );
    }

    if (weather is WeatherDataModel && gateway != null) {
      final date = '${DateTime.now().hour.toString().padLeft(2, '0')}00';
      var data = weather.response!.body!.items.item
          .where((element) => element.fcstTime == date)
          .toList();
      // log('data : $data');

      /// pty(비/눈), sky(날씨구분), t1h(온도), reh(습도)
      var pty =
          data.firstWhere((element) => element.category == 'PTY').fcstValue;
      var sky =
          data.firstWhere((element) => element.category == 'SKY').fcstValue;
      var t1h =
          data.firstWhere((element) => element.category == 'T1H').fcstValue;
      var reh =
          data.firstWhere((element) => element.category == 'REH').fcstValue;

      final convSky = DataUtillities.convSKY(sky: sky);
      final convPty = DataUtillities.convPTY(pty: pty);
      return Row(
        children: [
          Image.asset(
            'assets/img/weather/${DataUtillities.getIcon(pty: pty, sky: sky)}.png',
            height: 18.h,
          ),
          Text(
              '${gateway.location.split(' ').last} / $convSky ${convPty == '' ? '/' : '/ $convPty /'} $t1h℃ / $reh%',
              style: weatherTS),
        ],
      );
    }

    return const Text('날씨정보를 불러오는 중 오류가 발생하였습니다.');
  }
}
