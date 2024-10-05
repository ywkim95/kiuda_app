import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podo_darae_lab/common/const/data_const.dart';
import 'package:podo_darae_lab/common/utilities/data_utillities.dart';
import 'package:podo_darae_lab/home/components/controller/digital_card.dart';
import 'package:podo_darae_lab/home/components/controller/slider_card.dart';
import 'package:podo_darae_lab/home/components/controller/step_switch_card.dart';
import 'package:podo_darae_lab/home/enum/controller_spec_enum.dart';
import 'package:podo_darae_lab/home/model/cont_device_model.dart';
import 'package:podo_darae_lab/home/provider/cont_device_provider.dart';

class ControllerTile extends ConsumerWidget {
  const ControllerTile({
    super.key,
    required this.signalPower,
    required this.controller,
    required this.deviceId,
  });
  final String signalPower;
  final ContDeviceModel controller;
  final int deviceId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.zero,
      leading: Image.asset(
        '$rootPathController${DataUtillities.getImg(controller.specification!.name, isSensor: 'N')}.png',
        width: 35.w,
      ),
      minVerticalPadding: 0.0,
      horizontalTitleGap: 16.w,
      titleAlignment: ListTileTitleAlignment.titleHeight,
      visualDensity: VisualDensity(vertical: 0.h, horizontal: -4),
      title: Row(
        children: [
          Text(
            // '25.4 ℃',
            '신호상태 : ',
            style: TextStyle(
              fontSize: 14.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          Image.asset(
            DataUtillities.convertRssiImg(rssi: signalPower),
            width: 25.w,
          ),
        ],
      ),
      subtitle: Text(
        // '송풍기',
        controller.name,
        style: TextStyle(
          fontSize: 16.sp,
          fontWeight: FontWeight.w400,
        ),
      ),
      onTap: () async {
        final list = await ref
            .read(contDeviceProvider.notifier)
            .getSensorListByMappingId(deviceId: controller.connectedDeviceId);

        if (context.mounted) {
          switch (controller.specification!.controllerType) {
            case ControllerSpecEnum.DIGITAL:
              showDialog(
                context: context,
                builder: (context) => DigitalCard(
                  sensorList: list,
                  controller: controller,
                  deviceId: deviceId,
                ),
                barrierDismissible: false,
              );
              break;
            case ControllerSpecEnum.SLIDER:
              showDialog(
                context: context,
                builder: (context) => const SliderCard(),
              );
              break;
            case ControllerSpecEnum.STEPSWITCH:
              showDialog(
                context: context,
                builder: (context) => GestureDetector(
                  onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
                  child: StepSwitchCard(
                    sensorList: list,
                    controller: controller,
                    deviceId: deviceId,
                  ),
                ),
                barrierDismissible: false,
              );
              break;
          }
        }
      },
    );
  }
}
