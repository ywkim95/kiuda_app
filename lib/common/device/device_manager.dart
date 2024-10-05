import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

class DeviceManager {
  static Future<String> initialize() async {
    DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
      return androidInfo.id;
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
      return iosInfo.identifierForVendor ?? '';
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }
}
