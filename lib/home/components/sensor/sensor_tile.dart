import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podo_darae_lab/common/const/data_const.dart';
import 'package:podo_darae_lab/common/utilities/data_utillities.dart';
import 'package:podo_darae_lab/home/components/sensor/sensor_card.dart';
import 'package:podo_darae_lab/home/components/sensor/sensor_text.dart';
import 'package:podo_darae_lab/home/model/sensor_device_model.dart';
import 'package:podo_darae_lab/home/provider/chart_graph_provider.dart';

class SensorTile extends ConsumerWidget {
  const SensorTile({
    super.key,
    required this.index,
    required this.sensorDeviceModel,
    required this.value,
    required this.deviceId,
    required this.length,
  });
  final int index;
  final SensorDeviceModel sensorDeviceModel;
  final double value;
  final int deviceId;
  final int length;
  // customListViewBuilder를 통하여 받은 값을 ListTile에 매핑한다.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final spec = sensorDeviceModel.spec!;
    return ListTile(
      // tileColor: Colors.amber,
      // selected: false,
      minVerticalPadding: 0.0,
      horizontalTitleGap: 16.w,
      titleAlignment: ListTileTitleAlignment.titleHeight,
      dense: true,
      visualDensity: const VisualDensity(vertical: 0, horizontal: -4),
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(
        '$rootPathSensor${DataUtillities.getImg(spec.name, isSensor: 'Y')}.png',
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
            text: spec.unit,
            fontSize: 13.sp,
          ),
        ],
      ),
      subtitle: SensorText(
        text: spec.name,
        fontSize: 16.sp,
      ),
      onTap: () async {
        await ref
            .read(chartGraphProvider.notifier)
            .getChartGraph(deviceId: deviceId.toString());
        if (context.mounted) {
          showModalBottomSheet(
            isDismissible: false,
            isScrollControlled: true,
            context: context,
            builder: (context) => SizedBox(
              height: 560.h,
              child: SensorCard(
                index: index,
                deviceId: deviceId,
              ),
            ),
          );
        }
      },
    );
  }
}
