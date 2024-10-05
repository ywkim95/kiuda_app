// ignore_for_file: library_prefixes

import 'dart:math' as Math;

import 'package:intl/intl.dart';
import 'package:podo_darae_lab/home/model/result_data_model.dart';
import 'package:podo_darae_lab/home/model/temp_result_data_model.dart';

class SensorUtils {
  static DateTime roundUpToNext5Minutes(DateTime dateTime) {
    // 현재 분을 5로 나누고 올림하여 5분 단위로 조정
    int roundedMinutes = ((dateTime.minute / 5).ceil()) * 5;
    // 올림으로 인한 추가 분 계산
    int additionalMinutes = roundedMinutes - dateTime.minute;

    // 추가 분이 60이상이면, 시간을 조정해야 함
    if (additionalMinutes == 60) {
      // 이미 올림으로 인해 다음 시간으로 넘어간 경우
      additionalMinutes = 0; // 추가 분을 0으로 조정
      dateTime = dateTime.add(const Duration(hours: 1)); // 1시간 추가
    }

    // 최종적으로 5분 단위로 올림된 시간 반환
    return dateTime.add(Duration(minutes: additionalMinutes));
  }

  static double calculateData(ResultDataModel data, int i) {
    return double.parse(
      (data.tableAndGraph
                  .map(
                    (element) {
                      final e = element.toJson();

                      return double.parse(
                        e['s${i + 1}'].average.toStringAsFixed(2),
                      );
                    },
                  )
                  .toList()
                  .reduce(Math.max) /
              10)
          .toStringAsFixed(2),
    );
  }

  static double calcTempData(TempResultDataModel data, int i) {
    return double.parse(
      (data.tableAndGraph
                  .map((e) {
                    final element = e.toJson();
                    final value =
                        i > 11 ? 'SoilTemp_Avg_${i - 11}' : 'kPa_Avg_${i + 1}';

                    return double.parse(element[value].toStringAsFixed(2));
                  })
                  .toList()
                  .reduce(Math.max) /
              10)
          .toStringAsFixed(2),
    );
  }

  static String convertDate(String stringDate) {
    final parsedDate = DateTime.parse(stringDate).add(const Duration(hours: 9));
    final convertDate = SensorUtils.roundUpToNext5Minutes(parsedDate);
    return DateFormat('HH:mm').format(convertDate);
  }
}
