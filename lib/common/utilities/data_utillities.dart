import 'dart:convert';

import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:podo_darae_lab/common/const/colors_const.dart';
import 'package:podo_darae_lab/home/enum/controller_enum.dart';
import 'package:podo_darae_lab/home/enum/sensor_enum.dart';
import 'package:podo_darae_lab/home/enum/sky_enum.dart';
import 'package:podo_darae_lab/notification/enum/notify_type_enum.dart';

class DataUtillities {
  static String plainToBase64(String plain) {
    Codec<String, String> stringToBase64 = utf8.fuse(base64);

    String encoded = stringToBase64.encode(plain);
    return encoded;
  }

  static void toast({
    required String message,
  }) {
    Fluttertoast.showToast(
      msg: message,
      backgroundColor: Colors.black.withOpacity(0.5),
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.SNACKBAR,
    );
  }

  static DottedDecoration dividers({LinePosition position = LinePosition.top}) {
    return DottedDecoration(
      color: PRIMARY_COLOR,
      linePosition: position,
      dash: const [1, 2],
      strokeWidth: 0.5,
    );
  }

  static int getImg(String name, {required String isSensor}) {
    if (isSensor == 'Y') {
      return SensorList.values
          .firstWhere((element) => element.name == name)
          .number;
    } else {
      return ControllerList.values
          .firstWhere((element) => element.name == name)
          .number;
    }
  }

  static String getNotiImg(NotifyTypeEnum noti) {
    switch (noti) {
      case NotifyTypeEnum.WARNING:
        return 'ic_warning';
      case NotifyTypeEnum.INFO:
        return 'ic_basic';
    }
  }

  static String convertRssiImg({
    required String rssi,
  }) {
    try {
      num rssiToInt = double.parse(rssi);
      // log('rssiToInt : $rssiToInt');
      String rootPath = 'assets/img/rssi/signal_state_';
      if (rssiToInt > -90) {
        return '${rootPath}good.png';
      } else if (rssiToInt > -95) {
        return '${rootPath}normal.png';
      } else if (rssiToInt > -100) {
        return '${rootPath}bad.png';
      } else {
        return '${rootPath}none.png';
      }
    } catch (e) {
      toast(message: '신호 값 오류 발생');
      throw Exception('신호 값 오류 발생');
    }
  }

  static String convPTY({
    required String pty,
  }) {
    int i = int.parse(pty);
    switch (i) {
      case 1 || 5:
        return '비';
      case 2 || 6:
        return '비/눈';
      case 3 || 7:
        return '눈';
      default:
        return '';
    }
  }

  static String convSKY({
    required String sky,
  }) {
    int i = int.parse(sky);
    final weather = Sky.values.firstWhere((element) => element.number == i).ko;
    return weather;
    // switch (i) {
    //   case 3:
    //     return '구름';
    //   case 4:
    //     return '흐림';
    //   default:
    //     return '맑음';
    // }
  }

  static String getIcon({
    required String pty,
    required String sky,
  }) {
    int i = int.parse(sky);
    final weather =
        Sky.values.firstWhere((element) => element.number == i).number;
    switch (pty) {
      case '0' when weather == 1:
        return 'ic_wt_1';
      case '1':
      case '5':
        return 'ic_wt_5';
      case '2':
      case '6':
        return 'ic_wt_6';
      case '3':
      case '7':
        return 'ic_wt_7';
      default:
        if (weather == 3) return 'ic_wt_3';
        if (weather == 4) return 'ic_wt_4';
        return 'ic_wt_1';
    }
  }
}
