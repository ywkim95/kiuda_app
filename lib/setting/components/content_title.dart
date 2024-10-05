import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podo_darae_lab/common/const/colors_const.dart';

class ContentTitle extends StatelessWidget {
  const ContentTitle({super.key, required this.unitName, this.controller});
  final String? controller;
  final String unitName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.w,
        vertical: 8.h,
      ),
      decoration: const BoxDecoration(
        color: SETTING_NAME_COLOR,
      ),
      child: Row(
        children: [
          controller == null
              ? Container()
              : Flexible(
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 12.w, vertical: 4.h),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(100),
                      border: Border.all(
                        color: BORDER_SECOND_COLOR,
                      ),
                    ),
                    child: Text(
                      controller!,
                      style: TextStyle(fontSize: 14.sp),
                    ),
                  ),
                ),
          SizedBox(
            width: 8.w,
          ),
          Text(
            unitName,
            style: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
