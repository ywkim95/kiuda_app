import 'package:flutter/material.dart';
import 'package:podo_darae_lab/common/const/colors_const.dart';
import 'package:podo_darae_lab/home/components/sensor/custom_table_cell.dart';
import 'package:podo_darae_lab/home/model/device_model.dart';

class TableHeader extends StatelessWidget {
  const TableHeader({
    super.key,
    required this.device,
    required this.index,
  });

  final DeviceModel device;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(
          child: CustomTableCell(
            value: '시간',
            color: BODY_COLOR,
          ),
        ),
        Expanded(
          child: CustomTableCell(
            value: '값(단위:${device.sensors![index].spec!.unit})',
            color: BODY_COLOR,
          ),
        ),
      ],
    );
  }
}
