import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podo_darae_lab/common/const/colors_const.dart';
import 'package:podo_darae_lab/common/utilities/data_utillities.dart';
import 'package:podo_darae_lab/home/components/controller/controller_tile.dart';
import 'package:podo_darae_lab/home/components/sensor/sensor_tile.dart';
import 'package:podo_darae_lab/home/enum/type_enum.dart';
import 'package:podo_darae_lab/home/model/controller_data_model.dart';
import 'package:podo_darae_lab/home/model/device_model.dart';
import 'package:podo_darae_lab/home/model/real_time_data_list_model.dart';
import 'package:podo_darae_lab/home/model/sensor_data_model.dart';
import 'package:podo_darae_lab/home/provider/device_provider.dart';
import 'package:podo_darae_lab/home/provider/real_time_data_list_provider.dart';

class CustomListViewBuilder extends ConsumerWidget {
  const CustomListViewBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceList = ref.watch(deviceProvider);
    final provider = ref.watch(realTimeDataListProvider);

    if (provider is! RealTimeDataListModel) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }
    if (deviceList.isEmpty || deviceList == []) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }

    return ListView.builder(
      itemCount: deviceList.length,
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        final dataList = deviceList[index];
        if (dataList.classify == TypeEnum.SENSOR) {
          return sensor(
            device: dataList,
            snapshot: index,
            sensor: provider.deviceList[index].sensorData!,
          );
        } else if (dataList.classify == TypeEnum.CONTROLLER) {
          return controller(
            device: dataList,
            controller: provider.deviceList[index].controllerData!,
          );
        } else {
          return const Center(
            child: Text('해당 장비에 대한 정보가 없습니다.'),
          );
        }
      },
    );
  }

  Container sensor({
    required DeviceModel device,
    required int snapshot,
    required SensorDataModel sensor,
  }) {
    return Container(
      decoration: const BoxDecoration(
        color: BODY_COLOR,
      ),
      child: Stack(
        // fit: StackFit.expand,
        // clipBehavior: Clip.none,
        children: [
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(top: 20.h),
                color: snapshot % 4 == 0 ? PRIMARY_COLOR : PRIMARY_SECOND_COLOR,
                height: 100.h,
                alignment: Alignment.topCenter,
                width: double.maxFinite,
                child: Text(
                  device.name,
                  style: TextStyle(
                    fontSize: 32.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.fromLTRB(16.w, 80.w, 16.w, 16.w),
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: BORDER_COLOR,
              ),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Center(
                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        horizontalTitleGap: 20.w,
                        title: Text(
                          '센서정보',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: PRIMARY_SECOND_COLOR,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 8.w,
                          vertical: 4.h,
                        ),
                        width: 100.w,
                        decoration: BoxDecoration(
                          color: BORDER_COLOR,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              '신호상태 : ',
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                            Image.asset(
                              DataUtillities.convertRssiImg(
                                rssi: sensor.rssi.toString(),
                              ),
                              width: 20.w,
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
                Container(
                  padding: EdgeInsets.only(top: 8.h),
                  decoration: DataUtillities.dividers(),
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 2.5,
                    ),
                    shrinkWrap: true,
                    physics: const BouncingScrollPhysics(),
                    itemCount: device.sensors!.length,
                    itemBuilder: (context, index) {
                      final data = sensor.toJson()['s${index + 1}'];
                      final sensorDevice = device.sensors![index];
                      return SensorTile(
                        index: index,
                        sensorDeviceModel: sensorDevice,
                        value: double.parse(data.toString()),
                        deviceId: device.id,
                        length: device.sensors!.length,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 8.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column controller({
    required DeviceModel device,
    required ControllerDataModel controller,
  }) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            color: BODY_COLOR,
          ),
          child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.all(16.w),
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: BORDER_COLOR,
              ),
              color: Colors.white,
            ),
            child: Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  horizontalTitleGap: 20.w,
                  title: Text(
                    '제어기',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: PRIMARY_SECOND_COLOR,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Container(
                  decoration: DataUtillities.dividers(),
                ),
                SizedBox(
                  height: 8.h,
                ),
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2.5,
                  ),
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: device.controllers!.length,
                  itemBuilder: (context, index) {
                    return ControllerTile(
                      controller: device.controllers![index],
                      signalPower: controller.rssi.toStringAsFixed(2),
                      deviceId: device.id,
                    );
                  },
                ),
                SizedBox(
                  height: 8.h,
                )
              ],
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            border: Border(
              top: BorderSide(
                color: BORDER_COLOR,
              ),
            ),
          ),
          height: 15.h,
          width: double.maxFinite,
        ),
      ],
    );
  }
}
