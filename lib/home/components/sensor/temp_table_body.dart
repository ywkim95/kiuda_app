import 'package:flutter/material.dart';
import 'package:podo_darae_lab/common/utilities/sensor_utils.dart';
import 'package:podo_darae_lab/home/components/sensor/custom_table_cell.dart';
import 'package:podo_darae_lab/home/model/temp_result_data_model.dart';

class TempTableBody extends StatelessWidget {
  const TempTableBody({
    super.key,
    required this.data,
    required this.index,
  });

  final TempResultDataModel data;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        // 받은 값을 tableCell이라는 함수에 담아 ListView로 구현
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        children: data.tableAndGraph.reversed.map((element) {
          final e = element.toJson();

          String formattedDate = SensorUtils.convertDate(element.createdAt);

          String value = index > 11
              ? 'SoilTemp_Avg_${index - 11}'
              : 'kPa_Avg_${index + 1}';

          return Row(
            children: [
              Expanded(
                child: CustomTableCell(
                  value: formattedDate,
                ),
              ),
              Expanded(
                child: CustomTableCell(
                  value: e[value].toStringAsFixed(2),
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
