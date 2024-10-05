import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podo_darae_lab/common/const/colors_const.dart';

class ContentFromController extends StatelessWidget {
  const ContentFromController({
    super.key,
    required this.define,
    required this.setValue,
  });

  final String define;
  final Widget setValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.w,
      ),
      height: 40.h,
      decoration: BoxDecoration(
        border: Border.all(
          color: BORDER_SECOND_COLOR,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            define,
            style: TextStyle(
              color: SETTING_FONT_COLOR,
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
            ),
          ),
          setValue,
        ],
      ),
    );
  }
}
