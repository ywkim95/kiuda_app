import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podo_darae_lab/common/const/colors_const.dart';

extension BuildContextExtension on BuildContext {
  void showSnackbar(
    String message, {
    Widget? extraButton,
  }) {
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
          duration: const Duration(seconds: 60),
          showCloseIcon: true,
          closeIconColor: Colors.white,
          behavior: SnackBarBehavior.floating,
          content: GestureDetector(
            onTap: () {
              ScaffoldMessenger.of(this).hideCurrentSnackBar();
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      message,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  if (extraButton != null) extraButton,
                ],
              ),
            ),
          )),
    );
  }

  void showMaterialBanner(
    String message, {
    Widget? extraButton,
  }) {
    ScaffoldMessenger.of(this).showMaterialBanner(
      MaterialBanner(
        elevation: 0,
        content: Text(message),
        actions: [
          if (extraButton != null) extraButton,
        ],
      ),
    );
  }

  void showFlushbar(
    String title,
    String body, {
    Widget? extraButton,
  }) async {
    Flushbar(
      borderRadius: BorderRadius.circular(10),
      maxWidth: MediaQuery.of(this).size.width * 0.9,
      flushbarStyle: FlushbarStyle.FLOATING,
      backgroundColor: Colors.white,
      boxShadows: [
        BoxShadow(
          color: Colors.black.withOpacity(0.1),
          spreadRadius: 1,
          blurRadius: 1,
          offset: const Offset(0, 1),
        ),
      ],
      positionOffset: 35.h,
      title: title,
      titleColor: PRIMARY_COLOR,
      message: body,
      messageColor: PRIMARY_COLOR,
      duration: const Duration(seconds: 3),
      mainButton: extraButton,
      dismissDirection: FlushbarDismissDirection.VERTICAL,
      flushbarPosition: FlushbarPosition.TOP,
      padding: EdgeInsets.only(left: 24.h, right: 16.h, top: 8.h, bottom: 8.h),
      // padding: EdgeInsets.only(left: 16.w),
      icon: Image.asset(
        'assets/splash/launcher.png',
        width: 30.h,
        height: 30.h,
      ),
      onTap: (flushbar) {
        flushbar.dismiss();
      },
    ).show(this);
  }
}
