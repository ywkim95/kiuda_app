import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podo_darae_lab/common/const/colors_const.dart';

class CircleArrow extends StatelessWidget {
  const CircleArrow({
    super.key,
    required this.isRight,
  });

  final bool isRight;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40.h,
      height: 40.h,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: CIRCLE_BORDER_COLOR,
        ),
        shape: BoxShape.circle,
      ),
      child: Icon(
        isRight
            ? Icons.arrow_forward_ios_rounded
            : Icons.arrow_back_ios_rounded,
        color: SETTING_FONT_COLOR,
      ),
    );
  }
}
