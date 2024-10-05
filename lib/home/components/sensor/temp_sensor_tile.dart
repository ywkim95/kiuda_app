import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podo_darae_lab/common/const/data_const.dart';
import 'package:podo_darae_lab/common/utilities/data_utillities.dart';
import 'package:podo_darae_lab/home/components/sensor/sensor_text.dart';
import 'package:podo_darae_lab/home/components/sensor/temp_sensor_card.dart';
import 'package:podo_darae_lab/home/provider/temp_result_data_provider.dart';

class TempSensorTile extends ConsumerWidget {
  const TempSensorTile({
    super.key,
    required this.index,
    required this.name,
    required this.keys,
    // required this.sensorDeviceModel,
    required this.value,
    required this.deviceId,
    required this.length,
  });
  final int index;
  final String name;
  final List<String> keys;
  // final SensorDeviceModel sensorDeviceModel;
  final double value;
  final int deviceId;
  final int length;
  // customListViewBuilder를 통하여 받은 값을 ListTile에 매핑한다.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final spec = sensorDeviceModel.spec!;
    return Container(
      decoration: DataUtillities.dividers(),
      child: ListTile(
        // tileColor: Colors.amber,
        // selected: false,
        minVerticalPadding: 0.0,
        horizontalTitleGap: 16.w,
        titleAlignment: ListTileTitleAlignment.titleHeight,
        dense: true,
        visualDensity: const VisualDensity(vertical: 0, horizontal: -4),
        contentPadding: EdgeInsets.zero,
        leading: Image.asset(
          '$rootPathSensor${name.startsWith('토양') ? 9 : 10}.png',
          width: 35.w,
          // width: 40,
        ),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            SensorText(
              text: value.toString(),
              fontSize: 16.sp,
            ),
            SensorText(
              text: ' ${name.startsWith('kPa') ? 'kPa' : '℃'}',
              fontSize: 13.sp,
            ),
          ],
        ),
        subtitle: SensorText(
          text: name,
          fontSize: 16.sp,
        ),
        onTap: () async {
          // await ref
          //     .read(chartGraphProvider.notifier)
          //     .getChartGraph(deviceId: deviceId.toString());
          await ref
              .read(tempResultDataProvider.notifier)
              .getTempResultData(deviceId: deviceId.toString());

          if (context.mounted) {
            showModalBottomSheet(
              isDismissible: false,
              isScrollControlled: true,
              context: context,
              builder: (context) => SizedBox(
                height: 560.h,
                child: TempSensorCard(
                  index: index,
                  name: name,
                  keys: keys,
                  deviceId: deviceId,
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
