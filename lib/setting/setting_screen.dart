import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podo_darae_lab/auth/provider/secure_storage_provider.dart';
import 'package:podo_darae_lab/common/const/colors_const.dart';
import 'package:podo_darae_lab/common/const/data_const.dart';
import 'package:podo_darae_lab/common/layout/default_layout.dart';
import 'package:podo_darae_lab/common/route/router.dart';
import 'package:podo_darae_lab/home/enum/type_enum.dart';
import 'package:podo_darae_lab/home/model/cont_device_model.dart';
import 'package:podo_darae_lab/home/model/device_model.dart';
import 'package:podo_darae_lab/home/model/sensor_device_model.dart';
import 'package:podo_darae_lab/home/model/user_custom_value_model.dart';
import 'package:podo_darae_lab/setting/provider/setting_provider.dart';
import 'package:podo_darae_lab/setting/tabs/first_tab.dart';
import 'package:podo_darae_lab/setting/tabs/second_tab.dart';
import 'package:podo_darae_lab/setting/tabs/third_tab.dart';

class SettingScreen extends ConsumerStatefulWidget {
  static String get routeName => 'setting';
  const SettingScreen({super.key});

  @override
  ConsumerState<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends ConsumerState<SettingScreen>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  late final settingValueList = ref.watch(settingProvider);

  late final controllers = settingValueList
      .where((element) => element.classify == TypeEnum.CONTROLLER)
      .toList();
  late final sensors = settingValueList
      .where((element) => element.classify == TypeEnum.SENSOR)
      .toList();
  late var newSensorValueList = sensors
      .map((e) => e.sensors!
          .map((element) => {
                'start': element.customStableStart,
                'end': element.customStableEnd,
                'correctValue': element.correctionValue,
              })
          .toList())
      .toList();
  late var newContValueList = controllers
      .map((e) => e.controllers!
          .map((element) => element.userCustomValues!
              .map((value) => {
                    'value': value.manualValue,
                    'gab': value.gab,
                  })
              .toList())
          .toList())
      .toList();
  late var newUseYnList = settingValueList.map((e) => e.useYn).toList();
  @override
  void initState() {
    tabController = TabController(
      length: 3,
      vsync: this,
      initialIndex: 0,
      animationDuration: const Duration(milliseconds: 300),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: const Text('환경설정'),
      showAppbar: true,
      leadingIcon: IconButton(
        onPressed: () {
          ref.read(routerProvider).pop();
        },
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          color: PRIMARY_SECOND_COLOR,
        ),
      ),
      actionIcons: [
        IconButton(
          onPressed: () async {
            try {
              List<DeviceModel> newSettingValueList = [];
              List<DeviceModel> newSensorDeviceList = [];

              for (int i = 0; i < sensors.length; i++) {
                DeviceModel newSensorDevice;
                List<SensorDeviceModel> newSensorList = [];
                for (int j = 0; j < sensors[i].sensors!.length; j++) {
                  final newSensor = sensors[i].sensors![j].copyWith(
                      correctionValue: newSensorValueList[i][j]
                          ['correctValue']!,
                      customStableEnd: newSensorValueList[i][j]['end']!,
                      customStableStart: newSensorValueList[i][j]['start']!);
                  newSensorList.add(newSensor);
                }
                newSensorDevice = sensors[i].copyWith(sensors: newSensorList);
                newSensorDeviceList.add(newSensorDevice);
              }
              List<DeviceModel> newControllerDeviceList = [];
              for (int i = 0; i < controllers.length; i++) {
                List<ContDeviceModel> contList = [];
                for (int j = 0; j < controllers[i].controllers!.length; j++) {
                  List<UserCustomValueModel> customValueList = [];
                  for (int k = 0;
                      k <
                          controllers[i]
                              .controllers![j]
                              .userCustomValues!
                              .length;
                      k++) {
                    UserCustomValueModel userCustomValueModel = controllers[i]
                        .controllers![j]
                        .userCustomValues![k]
                        .copyWith(
                          gab: newContValueList[i][j][k]['gab']!,
                          manualValue: newContValueList[i][j][k]['value']!,
                        );
                    customValueList.add(userCustomValueModel);
                  }
                  final newCont = controllers[i]
                      .controllers![j]
                      .copyWith(userCustomValues: customValueList);
                  contList.add(newCont);
                }
                DeviceModel newContDevice =
                    controllers[i].copyWith(controllers: contList);
                newControllerDeviceList.add(newContDevice);
              }
              for (int i = 0; i < settingValueList.length; i++) {
                final DeviceModel newDevice;
                if (settingValueList[i].classify == TypeEnum.SENSOR) {
                  newDevice = settingValueList[i].copyWith(
                      useYn: newUseYnList[i],
                      sensors: newSensorDeviceList
                          .firstWhere(
                              (element) => element.id == settingValueList[i].id)
                          .sensors);
                } else {
                  newDevice = settingValueList[i].copyWith(
                      useYn: newUseYnList[i],
                      controllers: newControllerDeviceList
                          .firstWhere(
                              (element) => element.id == settingValueList[i].id)
                          .controllers);
                }
                newSettingValueList.add(newDevice);
              }
              log('$newSettingValueList');
              final roomId =
                  await ref.read(secureStorageProvider).read(key: ROOM_ID);

              await ref
                  .read(settingProvider.notifier)
                  .setSettingValue(roomId: roomId!, model: newSettingValueList);
            } catch (e, stack) {
              log('$e');
              log('$stack');
            } finally {
              ref.read(routerProvider).pop();
            }
          },
          icon: Icon(
            Icons.check_rounded,
            color: PRIMARY_COLOR,
            size: 25.w,
          ),
        ),
      ],
      child: settingValueList.isEmpty
          ? const Center(
              child: CircularProgressIndicator.adaptive(),
            )
          : GestureDetector(
              onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
              child: Column(
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  const Divider(
                    color: SETTING_COLOR,
                    height: 1,
                    thickness: 1,
                  ),
                  TabBar(
                    isScrollable: false,
                    physics: const BouncingScrollPhysics(),
                    indicator: const BoxDecoration(
                      color: SETTING_COLOR,
                    ),
                    labelColor: Colors.white, // textColor
                    labelPadding: EdgeInsets.symmetric(vertical: 2.w),
                    labelStyle: TextStyle(
                      fontSize: 17.sp,
                      fontWeight: FontWeight.w500,
                    ),
                    unselectedLabelColor: const Color(0xFF333333),
                    controller: tabController,
                    tabs: const [
                      Tab(
                        text: '사용 유무',
                      ),
                      Tab(
                        text: '제어기 설정',
                      ),
                      Tab(
                        text: '알람범위 & 보정',
                      ),
                    ],
                  ),
                  const Divider(
                    color: SETTING_COLOR,
                    height: 1,
                    thickness: 1,
                  ),
                  Expanded(
                    child: TabBarView(
                      physics: const BouncingScrollPhysics(),
                      controller: tabController,
                      children: [
                        // 디바이스 사용 유무 설정 페이지
                        FirstTab(
                          useYnList: settingValueList,
                          newUseYnList: newUseYnList,
                        ),
                        // 제어기 정보 설정 페이지
                        SecondTab(
                          deviceList: controllers,
                          newContValueList: newContValueList,
                          sensorDeviceList: sensors,
                        ),
                        // 센서 정보 설정 페이지
                        ThirdTab(
                          deviceList: sensors,
                          newSensorValueList: newSensorValueList,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
