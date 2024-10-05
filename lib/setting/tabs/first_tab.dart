import 'dart:developer';

import 'package:animated_toggle_switch/animated_toggle_switch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podo_darae_lab/common/const/colors_const.dart';
import 'package:podo_darae_lab/home/model/device_model.dart';
import 'package:podo_darae_lab/setting/components/content_from_controller.dart';

class FirstTab extends StatefulWidget {
  const FirstTab(
      {super.key, required this.useYnList, required this.newUseYnList});
  final List<DeviceModel> useYnList;
  final List<bool> newUseYnList;
  @override
  State<FirstTab> createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.w),
      // child: Text('$useYnList'),
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: widget.useYnList.length,
        itemBuilder: (context, index) {
          var color =
              widget.newUseYnList[index] ? PRIMARY_COLOR : SETTING_FONT_COLOR;
          return ContentFromController(
            define: widget.useYnList[index].name,
            setValue: AnimatedToggleSwitch<bool>.dual(
              current: widget.newUseYnList[index],
              first: false,
              second: true,
              onTap: (props) {
                setState(() {
                  if (widget.newUseYnList[index]) {
                    widget.newUseYnList[index] = props.values.first;
                  } else {
                    widget.newUseYnList[index] = props.values.last;
                  }
                });
              },
              height: 25.h,
              spacing: 5.w,
              indicatorSize: Size.fromWidth(25.w),
              style: ToggleStyle(
                backgroundColor: color,
                indicatorColor: Colors.white,
                borderColor: color,
              ),
              animationCurve: Curves.decelerate,
              animationDuration: const Duration(milliseconds: 300),
              styleAnimationType: AnimationType.onSelected,
              borderWidth: 3,
              clipAnimation: true,
              textBuilder: (value) => Text(
                value ? 'ON' : 'OFF',
                style: TextStyle(color: Colors.white, fontSize: 12.sp),
              ),
              textMargin: const EdgeInsets.only(bottom: 1.0),
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          height: 8.h,
        ),
      ),
    );
  }
}
