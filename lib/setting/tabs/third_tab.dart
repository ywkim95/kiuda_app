import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podo_darae_lab/common/components/custom_text_form_field.dart';
import 'package:podo_darae_lab/common/const/colors_const.dart';
import 'package:podo_darae_lab/common/utilities/track_shape.dart';
import 'package:podo_darae_lab/home/model/device_model.dart';
import 'package:podo_darae_lab/setting/components/content_title.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class ThirdTab extends StatefulWidget {
  const ThirdTab({
    super.key,
    required this.deviceList,
    required this.newSensorValueList,
  });
  final List<DeviceModel> deviceList;
  final List<List<Map<String, double>>> newSensorValueList;
  @override
  State<ThirdTab> createState() => _ThirdTabState();
}

class _ThirdTabState extends State<ThirdTab> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: widget.deviceList.length,
        itemBuilder: (context, index) {
          final device = widget.deviceList[index];
          return Column(
            children: [
              ContentTitle(unitName: device.name),
              ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemCount: device.sensors!.length,
                itemBuilder: (context, i) {
                  var sensor = device.sensors![i];
                  var values = SfRangeValues(
                      widget.newSensorValueList[index][i]['start'],
                      widget.newSensorValueList[index][i]['end']);
                  var maxValue = sensor.spec!.maxValue;
                  var minValue = sensor.spec!.minValue;
                  var controller = TextEditingController(
                      text: widget.newSensorValueList[index][i]['correctValue']
                          .toString());

                  return Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 8.h,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: BORDER_SECOND_COLOR,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(20.w, 0, 16.w, 8.h),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                sensor.name!,
                                style: TextStyle(
                                  color: SETTING_FONT_COLOR,
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              Text(
                                '(${sensor.spec!.unit})',
                                style: TextStyle(
                                  color: SETTING_FONT_COLOR,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 24.w),
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text('최소'),
                                        Text('최대'),
                                      ],
                                    ),
                                  ),
                                  SfRangeSliderTheme(
                                    data: SfRangeSliderThemeData(
                                      overlayColor: Colors.transparent,
                                      activeTrackColor: const Color(0xFFA501EA),
                                      disabledActiveTrackColor: Colors.white,
                                      thumbStrokeColor: const Color(0xFFEEEEEE),
                                      thumbStrokeWidth: 0.5,
                                      thumbColor: Colors.white,
                                      activeTrackHeight: 8,
                                      inactiveTrackHeight: 8,
                                      inactiveTrackColor:
                                          const Color(0xFF8C93A1),
                                      tooltipBackgroundColor:
                                          const Color(0xFFEBEDF1),
                                      tooltipTextStyle: const TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    child: SfRangeSlider(
                                      values: values,
                                      onChanged: (SfRangeValues value) {
                                        setState(() {
                                          widget.newSensorValueList[index][i]
                                              ['start'] = value.start;
                                          widget.newSensorValueList[index][i]
                                              ['end'] = value.end;
                                        });
                                      },
                                      stepSize: maxValue > 1000 ? 100 : 1,
                                      min: minValue,
                                      max: maxValue,
                                      interval: maxValue / 4,
                                      showLabels: true,
                                      enableTooltip: true,
                                      trackShape: TrackShape(),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                // vertical: 8.0,
                                horizontal: 16.0,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('보정'),
                                  Container(
                                    margin: const EdgeInsets.only(
                                      top: 4.0,
                                      bottom: 16.0,
                                    ),
                                    width: 60,
                                    child: CustomTextFormField(
                                      controller: controller,
                                      onChanged: (value) {
                                        // controller.text = value;
                                        widget.newSensorValueList[index][i]
                                                ['correctValue'] =
                                            double.parse(value);
                                      },
                                      textAlign: TextAlign.center,
                                      fillColor: const Color(0xFFEBEDF1),
                                      textColor: Colors.black,
                                      padding: const EdgeInsets.all(10.0),
                                      keyboardType:
                                          const TextInputType.numberWithOptions(
                                        signed: true,
                                      ),
                                      inputFormatters: [
                                        FilteringTextInputFormatter.allow(
                                          RegExp('[0-9-]'),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
