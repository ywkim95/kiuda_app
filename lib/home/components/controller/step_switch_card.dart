import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:keyboard_actions/keyboard_actions.dart';
import 'package:podo_darae_lab/auth/provider/secure_storage_provider.dart';
import 'package:podo_darae_lab/common/const/colors_const.dart';
import 'package:podo_darae_lab/common/const/data_const.dart';
import 'package:podo_darae_lab/home/components/controller/alert_button.dart';
import 'package:podo_darae_lab/home/model/cont_device_model.dart';
import 'package:podo_darae_lab/home/model/sensor_device_model.dart';
import 'package:podo_darae_lab/home/model/set_controller_dto.dart';
import 'package:podo_darae_lab/home/model/set_user_custom_value_dto.dart';
import 'package:podo_darae_lab/home/model/user_custom_value_model.dart';
import 'package:podo_darae_lab/home/provider/cont_device_provider.dart';

class StepSwitchCard extends ConsumerStatefulWidget {
  const StepSwitchCard({
    super.key,
    required this.sensorList,
    required this.controller,
    required this.deviceId,
  });
  final List<SensorDeviceModel> sensorList;
  final ContDeviceModel controller;
  final int deviceId;
  @override
  ConsumerState<StepSwitchCard> createState() => _StepSwitchCardState();
}

class _StepSwitchCardState extends ConsumerState<StepSwitchCard> {
  List<TextEditingController> textEditingControlerList = [];
  List<FocusNode> nodeList = [];

  late SensorDeviceModel dropDownButtonValue;

  bool _powerSet = false;

  @override
  void initState() {
    dropDownButtonValue = widget.sensorList.firstWhere(
        (element) => element.id == widget.controller.mappingSensorId);
    _powerSet = widget.controller.useYn;
    for (int i = 0; i < widget.controller.userCustomValues!.length; i++) {
      final value = widget.controller.userCustomValues![i];
      textEditingControlerList
          .add(TextEditingController(text: value.manualValue.toString()));
      nodeList.add(FocusNode());
    }
    textEditingControlerList = widget.controller.userCustomValues!
        .map((e) => TextEditingController(text: e.manualValue.toString()))
        .toList();

    super.initState();
  }

  @override
  void dispose() {
    for (var element in nodeList) {
      element.unfocus();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      elevation: 0,
      actionsPadding: EdgeInsets.zero,
      clipBehavior: Clip.hardEdge,

      buttonPadding: EdgeInsets.zero,
      insetPadding: EdgeInsets.zero,
      titlePadding: EdgeInsets.symmetric(
        vertical: 8.h,
        horizontal: 12.w,
      ),
      iconPadding: EdgeInsets.zero,
      // contentPadding: const EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 24.0),
      contentPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      title: Card(
        color: Colors.transparent,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '${widget.controller.name} 설정',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            InkWell(
              onTap: () {
                // Utils.toast(message: '선택되었습니다.');
                Navigator.of(context).pop();
              },
              child: Icon(
                Icons.close_rounded,
                size: 20.w,
              ),
            )
          ],
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(16.w, 8.h, 16.w, 16.h),
            child: Column(
              children: [
                // on/off 설정
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '동작',
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                    ),
                    Switch(
                      activeColor: const Color(0xFFffb81e),
                      activeTrackColor: const Color(0xFFe9ecf3),
                      value: _powerSet,
                      onChanged: (value) {
                        setState(() {
                          _powerSet = value;
                        });
                      },
                    )
                  ],
                ),
                // 센서 값 설정
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '기준센서',
                      style: TextStyle(
                        fontSize: 14.sp,
                      ),
                    ),
                    Container(
                      width: 100.w,
                      height: 30.h,
                      alignment: Alignment.centerRight,
                      margin: EdgeInsets.symmetric(
                        vertical: 6.h,
                      ),
                      padding: EdgeInsets.fromLTRB(16.w, 4.h, 4.w, 4.h),
                      decoration: BoxDecoration(
                        color: const Color(0xffebedf1),
                        // border: Border.all(),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: DropdownButton<SensorDeviceModel>(
                        isExpanded: true,
                        isDense: true,
                        borderRadius: BorderRadius.circular(5),
                        underline: Container(),
                        value: dropDownButtonValue,
                        items: <DropdownMenuItem<SensorDeviceModel>>[
                          ...widget.sensorList.map(
                            (e) => DropdownMenuItem(
                              value: e,
                              child: Text(e.name!),
                            ),
                          ),
                        ],
                        onChanged: (value) {
                          setState(() {
                            dropDownButtonValue = value!;
                          });
                        },
                      ),
                    ),
                  ],
                ),
                // 기준 값 설정
                // 여기가 분류되어야하는 파트이다.
                // digital, slider, stepswitch
                Container(
                  margin: EdgeInsets.symmetric(vertical: 8.h),
                  height: 150.h,
                  width: 250.w,
                  child: KeyboardActions(
                    config: KeyboardActionsConfig(
                      keyboardActionsPlatform: KeyboardActionsPlatform.ALL,
                      keyboardBarColor: BODY_COLOR,
                      nextFocus: true,
                      actions: nodeList
                          .map((e) => KeyboardActionsItem(
                                  focusNode: e,
                                  toolbarButtons: [
                                    (node) {
                                      return GestureDetector(
                                        onTap: () => node.unfocus(),
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 16.w),
                                          child: Text(
                                            '완료',
                                            style: TextStyle(
                                              fontSize: 14.sp,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                      );
                                    }
                                  ]))
                          .toList(),
                    ),
                    child: Scrollbar(
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          final textContoller = textEditingControlerList[index];
                          final value =
                              widget.controller.userCustomValues![index];
                          return eachValue(
                            index: index + 1,
                            value: value,
                            textEditingController: textContoller,
                            node: nodeList[index],
                            onFieldSubmitted: (_) {
                              if (index == textEditingControlerList.length) {
                                FocusScope.of(context).unfocus();
                              } else {
                                FocusScope.of(context).requestFocus(
                                  nodeList[index + 1],
                                );
                              }
                            },
                          );
                        },
                        separatorBuilder: (context, index) => const Divider(),
                        itemCount: textEditingControlerList.length,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                child: AlertButton(
                  text: '취소',
                  color: const Color(0xFF818795),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              Expanded(
                child: AlertButton(
                  text: '선택',
                  color: PRIMARY_COLOR,
                  onTap: () async {
                    /**
                     * 1. 제어기의 업데이트된 상태를 저장하기 위해서 GetSensorListModel에 값을 담아준다.
                     * 2. setControllerInfo에 GetSensorListModel을 담아 실행한다.
                     * 3. 완료된 후 받은 메시지를 toast로 보여준다.
                     */

                    try {
                      List<SetUserCustomValueDto> sendUserCustomValues = [];

                      if (widget.controller.userCustomValues == null &&
                          widget.controller.userCustomValues!.isEmpty) {
                        throw Exception();
                      }
                      // sendUserCustomValues = widget
                      //       .controller.userCustomValues!
                      //       .map((e) => SetUserCustomValueDto(
                      //           id: e.id,
                      //           manualValue: e.manualValue,
                      //           gab: e.gab,
                      //           memo: e.memo))
                      //       .toList();
                      //   sendUserCustomValues
                      //       .sort((a, b) => a.id.compareTo(b.id));
                      for (int i = 0;
                          i < widget.controller.userCustomValues!.length;
                          i++) {
                        final value = widget.controller.userCustomValues![i];
                        sendUserCustomValues.add(
                          SetUserCustomValueDto(
                            id: value.id,
                            manualValue:
                                int.parse(textEditingControlerList[i].text),
                            gab: value.gab,
                            memo: value.memo,
                          ),
                        );
                      }

                      SetControllerDto dto = SetControllerDto(
                        name: widget.controller.name,
                        varName: widget.controller.varName!,
                        location: widget.controller.location!,
                        useYn: _powerSet,
                        mappingSensorId: dropDownButtonValue.id,
                        connectedDeviceId: widget.controller.connectedDeviceId,
                        userCustomValues: sendUserCustomValues,
                        device: widget.deviceId,
                        specification: widget.controller.specification!.id,
                      );

                      final roomId = await ref
                          .read(secureStorageProvider)
                          .read(key: ROOM_ID);

                      await ref.read(contDeviceProvider.notifier).setContDevice(
                            dto: dto,
                            id: widget.controller.id,
                            roomId: roomId!,
                          );
                      // 여기서 모든 값을 취합한 후 retrofit 실행
                    } catch (e, stack) {
                      log('$e');
                      log('$stack');
                    } finally {
                      if (context.mounted) {
                        Navigator.of(context).pop();
                      }
                    }
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget eachValue({
    required int index,
    required UserCustomValueModel value,
    required TextEditingController textEditingController,
    required FocusNode node,
    required void Function(String) onFieldSubmitted,
  }) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '기준 값 $index',
              style: TextStyle(fontSize: 14.sp),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 6.h,
              ),
              padding: EdgeInsets.symmetric(
                vertical: 4.h,
                horizontal: 12.w,
              ),
              alignment: Alignment.centerRight,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color(0xFFebedf1),
              ),
              width: 100.w,
              height: 30.h,
              child: TextField(
                focusNode: node,
                onSubmitted: onFieldSubmitted,
                controller: textEditingController,
                // controller: value,
                textAlignVertical: TextAlignVertical.center,
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 14.sp,
                ),
                maxLines: 1,
                scrollPadding: EdgeInsets.zero,
                decoration: const InputDecoration(
                  contentPadding: EdgeInsets.zero,
                  isCollapsed: true,
                  hintText: '',
                  // filled: true,
                  // fillColor: const Color(0xffebedf1),
                  isDense: true,
                  focusedBorder: InputBorder.none,
                  enabledBorder: InputBorder.none,
                ),
                keyboardType: TextInputType.number,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(
                    RegExp('[0-9.-]'),
                  ),
                ],
                onChanged: (value) {
                  log(textEditingController.text);
                },
                showCursor: true,
              ),
            ),
          ],
        ),
        Container(
          alignment: Alignment.centerRight,
          color: Colors.transparent,
          child: Text(
            value.memo,
            style: TextStyle(
              color: SETTING_FONT_COLOR,
              fontSize: 12.sp,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      ],
    );
  }
}
