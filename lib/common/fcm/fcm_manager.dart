import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:podo_darae_lab/app.dart';
import 'package:podo_darae_lab/common/const/colors_const.dart';
import 'package:podo_darae_lab/common/extension/build_context_extension.dart';

class FcmManager {
  static void requestPermission() {
    FirebaseMessaging.instance.requestPermission();
  }

  static Future<String> getToken() async {
    return await FirebaseMessaging.instance.getToken() ?? '';
  }

  static Future<void> deleteToken() async {
    await FirebaseMessaging.instance.deleteToken();
  }

  static void initialize(WidgetRef ref) async {
    // Foreground
    // 앱이 실행중일 때 푸시 알림을 받을 때 사용

    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      final title = message.notification?.title;
      final body = message.notification?.body;
      if (body == null || title == null) {
        return;
      }

      debugPrint('context: ${App.navigatorKey.currentContext}');

      App.navigatorKey.currentContext?.showFlushbar(
        title,
        body,
        extraButton: GestureDetector(
          onTap: () {
            App.navigatorKey.currentContext!.push(message.data['deeplink']);
          },
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
            child: const Text(
              '열기',
              style: TextStyle(
                color: PRIMARY_SECOND_COLOR,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      );
    });

    // Background
    // 앱이 백그라운드일 때 푸시 알림을 받을 때 사용
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      debugPrint('context: ${App.navigatorKey.currentContext}');
      App.navigatorKey.currentContext!.push(message.data['deeplink']);
    });

    // Not Running -> initial launch
    // 앱이 종료되어있을 때 푸시 알림을 받을 때 사용

    final firstMessage = await FirebaseMessaging.instance.getInitialMessage();
    if (firstMessage != null) {
      while (App.navigatorKey.currentContext == null &&
          !App.navigatorKey.currentContext!.mounted) {
        await Future.delayed(const Duration(milliseconds: 50));
      }
      // final context = App.navigatorKey.currentContext;
      // debugPrint('context: $context');

      // if (context != null && context.mounted) {
      //   context.push(firstMessage.data['deeplink']);
      // }
    }
  }
}
