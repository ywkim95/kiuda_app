import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podo_darae_lab/common/const/colors_const.dart';
import 'package:podo_darae_lab/common/utilities/data_utillities.dart';
import 'package:podo_darae_lab/home/components/change_farm_modal_bottom_sheet.dart';
import 'package:podo_darae_lab/home/components/weather.dart';

class MainHeader extends StatelessWidget {
  const MainHeader({
    super.key,
    required this.farmName,
  });
  final String farmName;
  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        ListTile(
          contentPadding:
              EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          title: Row(
            children: [
              Text(
                farmName,
                style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w700,
                  color: PRIMARY_COLOR,
                ),
              ),
              SizedBox(
                width: 4.w,
              ),
              Text(
                '농장',
                style: TextStyle(
                  fontSize: 32.sp,
                  fontWeight: FontWeight.w700,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          // 날씨 정보
          subtitle: Weather(),
        ),
        Positioned(
          top: 4.h,
          right: 32.w,
          child: Container(
            padding: EdgeInsets.all(8.w),
            width: 80.w,
            height: 80.w,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: CIRCLE_COLOR,
            ),
            child: Image.asset('assets/img/common/ic_grape.png'),
          ),
        ),
        Positioned(
          width: 25.w,
          height: 25.w,
          right: 32.w,
          bottom: 20.h,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.transparent,
              padding: EdgeInsets.zero,
              shadowColor: Colors.transparent,
            ),
            child: Image.asset(
              'assets/img/common/btn_select_farm.png',
            ),
            onPressed: () {
              DataUtillities.toast(message: '농장변경버튼입니다.');

              /// 농장리스트 로직이 없어 임시 구현(UI)
              showModalBottomSheet(
                context: context,
                builder: (context) => const ChangeFarmModalBottomSheet(),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
