import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podo_darae_lab/auth/provider/secure_storage_provider.dart';
import 'package:podo_darae_lab/common/const/colors_const.dart';
import 'package:podo_darae_lab/common/const/data_const.dart';
import 'package:podo_darae_lab/home/components/controller/alert_button.dart';
import 'package:podo_darae_lab/home/model/cont_device_model.dart';
import 'package:podo_darae_lab/home/model/sensor_device_model.dart';
import 'package:podo_darae_lab/home/model/set_controller_dto.dart';
import 'package:podo_darae_lab/home/model/set_user_custom_value_dto.dart';
import 'package:podo_darae_lab/home/provider/cont_device_provider.dart';

class DigitalCard extends ConsumerStatefulWidget {
  const DigitalCard({
    super.key,
    required this.sensorList,
    required this.controller,
    required this.deviceId,
  });
  final List<SensorDeviceModel> sensorList;
  final ContDeviceModel controller;
  final int deviceId;

  @override
  ConsumerState<DigitalCard> createState() => _DigitalCardState();
}

class _DigitalCardState extends ConsumerState<DigitalCard> {
  TextEditingController textEditingController = TextEditingController();

  late SensorDeviceModel dropDownButtonValue;

  bool _powerSet = false;

  @override
  void initState() {
    textEditingController.text =
        widget.controller.userCustomValues!.first.manualValue.toString();
    dropDownButtonValue = widget.sensorList.firstWhere(
        (element) => element.id == widget.controller.mappingSensorId);

    _powerSet = widget.controller.useYn;

    super.initState();
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
              child: const Icon(
                Icons.close_rounded,
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
                    const Text('동작'),
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
                    const Text('기준센서'),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('기준 값'),
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
                    widget.controller.userCustomValues!.first.memo,
                    style: TextStyle(
                      color: SETTING_FONT_COLOR,
                      fontSize: 12.sp,
                      overflow: TextOverflow.ellipsis,
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
                      SetUserCustomValueDto sendUservalue =
                          SetUserCustomValueDto(
                        id: widget.controller.userCustomValues!.first.id,
                        manualValue: int.parse(textEditingController.text),
                        gab: widget.controller.userCustomValues!.first.gab,
                        memo: widget.controller.userCustomValues!.first.memo,
                      );

                      List<SetUserCustomValueDto> sendUserCustomValues = [];

                      if (widget.controller.userCustomValues != null &&
                          widget.controller.userCustomValues!.isNotEmpty) {
                        sendUserCustomValues = widget
                            .controller.userCustomValues!
                            .map((e) => SetUserCustomValueDto(
                                id: e.id,
                                manualValue: e.manualValue,
                                gab: e.gab,
                                memo: e.memo))
                            .toList();
                        sendUserCustomValues
                            .sort((a, b) => a.id.compareTo(b.id));
                        sendUserCustomValues[0] = sendUservalue;
                      } else {
                        sendUserCustomValues.add(sendUservalue);
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
}
