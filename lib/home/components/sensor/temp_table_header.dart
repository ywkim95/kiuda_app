import 'package:flutter/material.dart';
import 'package:podo_darae_lab/common/const/colors_const.dart';
import 'package:podo_darae_lab/home/components/sensor/custom_table_cell.dart';

class TempTableHeader extends StatelessWidget {
  const TempTableHeader({
    super.key,
    required this.name,
    required this.index,
  });
  final String name;
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
            value:
                '값(단위:${name.startsWith('수분') && index <= 11 ? 'kPa' : '℃'})',
            color: BODY_COLOR,
          ),
        ),
      ],
    );
  }
}
