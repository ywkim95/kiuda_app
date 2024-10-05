import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podo_darae_lab/common/const/colors_const.dart';
import 'package:podo_darae_lab/common/utilities/data_utillities.dart';
import 'package:podo_darae_lab/home/components/sensor/temp_sensor_tile.dart';
import 'package:podo_darae_lab/home/model/temp_real_time_model.dart';
import 'package:podo_darae_lab/home/provider/device_provider.dart';
import 'package:podo_darae_lab/home/provider/temp_real_time_provider.dart';

class TempCustomListViewBuilder extends ConsumerWidget {
  const TempCustomListViewBuilder({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final deviceList = ref.watch(deviceProvider);
    final provider = ref.watch(tempRealTimeProvider);

    if (provider is! TempRealTimeModel) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }

    if (deviceList.isEmpty || deviceList == []) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }

    List<String> keys = convertKeys(provider);
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
                color: PRIMARY_COLOR,
                height: 100.h,
                alignment: Alignment.topCenter,
                width: double.maxFinite,
                child: Text(
                  'Teros21',
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
                                rssi: '-80',
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
                // Container(
                // padding: EdgeInsets.only(top: 8.h),
                // decoration: DataUtillities.dividers(),
                // child:
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 2.5,
                  ),
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: 24,
                  itemBuilder: (context, index) {
                    final fieldName = index <= 11
                        ? 'kPa_Avg_${index + 1}'
                        : 'SoilTemp_Avg_${index - 11}';

                    final data = provider.data.toJson()[fieldName];
                    return TempSensorTile(
                      index: index,
                      name: keys[index],
                      keys: keys,
                      value: double.parse(data.toString()),
                      deviceId: provider.data.deviceId,
                      length: 24,
                    );
                  },
                ),
                // ),
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

  List<String> convertKeys(TempRealTimeModel provider) {
    final toJson = provider.data.toJson();
    final keys = toJson.keys
        .where(
          (element) =>
              element != 'id' &&
              element != 'deviceId' &&
              element != 'createdAt',
        )
        .toList();
    final convertKeys = keys.map((e) {
      if (e.startsWith('kPa_Avg')) {
        final number = e.split('_').last;
        return '수분장력_$number';
      } else {
        final number = e.split('_').last;
        return '토양온도_$number';
      }
    }).toList();
    return convertKeys;
  }
}
