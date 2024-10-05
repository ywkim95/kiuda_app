import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podo_darae_lab/common/const/colors_const.dart';
import 'package:podo_darae_lab/home/model/device_model.dart';
import 'package:podo_darae_lab/setting/components/content_from_controller.dart';
import 'package:podo_darae_lab/setting/components/content_title.dart';
import 'package:podo_darae_lab/setting/components/description.dart';
import 'package:podo_darae_lab/setting/components/value_control_box.dart';

class SecondTab extends StatefulWidget {
  const SecondTab({
    super.key,
    required this.deviceList,
    required this.newContValueList,
    required this.sensorDeviceList,
  });
  final List<DeviceModel> deviceList;
  final List<DeviceModel> sensorDeviceList;
  final List<List<List<Map<String, int>>>> newContValueList;

  @override
  State<SecondTab> createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      // child: Text('$deviceList'),
      child: ListView.separated(
        itemCount: widget.deviceList.length,
        itemBuilder: (context, index) {
          final controllers = widget.deviceList[index].controllers;
          return ListView.separated(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: controllers!.length,
            itemBuilder: (context, i) {
              final userCustomValues = controllers[i].userCustomValues;
              final mappingSensor = widget.sensorDeviceList[i].sensors!
                  .firstWhere((e) => e.id == controllers[i].mappingSensorId);
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: BODY_COLOR,
                    width: 2,
                  ),
                ),
                child: Column(
                  children: [
                    ContentTitle(
                      controller: controllers[i].name,
                      unitName: controllers[i].specification!.name,
                    ),
                    ContentFromController(
                        define: '센서',
                        setValue: Text(
                          mappingSensor.spec!.name,
                          style: TextStyle(fontSize: 20.sp),
                        )),
                    ListView.builder(
                      // padding: EdgeInsets.symmetric(horizontal: 8.w),
                      shrinkWrap: true,
                      physics: const BouncingScrollPhysics(),
                      itemCount: userCustomValues!.length,
                      itemBuilder: (context, j) {
                        var ecValue = TextEditingController(
                            text: userCustomValues[j].manualValue.toString());
                        var ecGab = TextEditingController(
                            text: userCustomValues[j].gab.toString());

                        return Column(
                          children: [
                            ContentFromController(
                                define: '${j + 1}번 값 설정',
                                setValue: Container()),
                            ContentFromController(
                                define: '제어값',
                                setValue: ValueControlBox(
                                    controller: ecValue,
                                    onChanged: (value) {
                                      if (value.isEmpty) {
                                        ecValue.text = 0.toString();
                                        widget.newContValueList[index][i][j]
                                            ['value'] = 0;
                                      } else {
                                        ecValue.text = value;
                                        widget.newContValueList[index][i][j]
                                            ['value'] = int.parse(ecValue.text);
                                      }
                                    },
                                    add: () {
                                      ecValue.text =
                                          (int.parse(ecValue.text) + 1)
                                              .toString();
                                      widget.newContValueList[index][i][j]
                                          ['value'] = int.parse(ecValue.text);
                                      if (int.parse(ecValue.text) <
                                          mappingSensor.spec!.minValue) {
                                        ecValue.text = mappingSensor
                                            .spec!.minValue
                                            .toString();
                                        widget.newContValueList[index][i][j]
                                                ['value'] =
                                            mappingSensor.spec!.minValue;
                                      } else if (int.parse(ecValue.text) >
                                          mappingSensor.spec!.maxValue) {
                                        ecValue.text = mappingSensor
                                            .spec!.maxValue
                                            .toString();
                                        widget.newContValueList[index][i][j]
                                                ['value'] =
                                            mappingSensor.spec!.maxValue;
                                      }
                                    },
                                    remove: () {
                                      ecValue.text =
                                          (int.parse(ecValue.text) - 1)
                                              .toString();
                                      widget.newContValueList[index][i][j]
                                          ['value'] = int.parse(ecValue.text);
                                      if (int.parse(ecValue.text) <
                                          mappingSensor.spec!.minValue) {
                                        ecValue.text = mappingSensor
                                            .spec!.minValue
                                            .toString();
                                        widget.newContValueList[index][i][j]
                                                ['value'] =
                                            mappingSensor.spec!.minValue;
                                      } else if (int.parse(ecValue.text) >
                                          mappingSensor.spec!.maxValue) {
                                        ecValue.text = mappingSensor
                                            .spec!.maxValue
                                            .toString();
                                        widget.newContValueList[index][i][j]
                                                ['value'] =
                                            mappingSensor.spec!.maxValue;
                                      }
                                    })),
                            ContentFromController(
                                define: '제어편차',
                                setValue: ValueControlBox(
                                    onChanged: (value) {
                                      if (value.isEmpty) {
                                        ecGab.text = 0.toString();
                                        widget.newContValueList[index][i][j]
                                            ['gab'] = 0;
                                      } else {
                                        ecGab.text = value;
                                        widget.newContValueList[index][i][j]
                                            ['gab'] = int.parse(ecGab.text);
                                      }
                                    },
                                    add: () {
                                      ecGab.text = (int.parse(ecGab.text) + 1)
                                          .toString();
                                      widget.newContValueList[index][i][j]
                                          ['gab'] = int.parse(ecGab.text);
                                    },
                                    remove: () {
                                      ecGab.text = (int.parse(ecGab.text) - 1)
                                          .toString();
                                      widget.newContValueList[index][i][j]
                                          ['gab'] = int.parse(ecGab.text);
                                    },
                                    controller: ecGab)),
                            Description(
                                description: '※ ${userCustomValues[j].memo}'),
                          ],
                        );
                      },
                    ),
                  ],
                ),
              );
            },
            separatorBuilder: (context, index) => SizedBox(
              height: 8.h,
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
