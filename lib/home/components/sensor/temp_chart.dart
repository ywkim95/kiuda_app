import 'package:flutter/material.dart';
import 'package:podo_darae_lab/common/utilities/sensor_utils.dart';
import 'package:podo_darae_lab/home/components/sensor/chart_data.dart';
import 'package:podo_darae_lab/home/model/temp_result_data_model.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class TempChart extends StatelessWidget {
  const TempChart({
    super.key,
    required this.data,
    required this.i,
  });

  final TempResultDataModel data;
  final int i;

  @override
  Widget build(BuildContext context) {
    final calc = SensorUtils.calcTempData(data, i);

    return SfCartesianChart(
      primaryXAxis: CategoryAxis(
        // borderColor: Colors.black,
        labelPlacement: LabelPlacement.onTicks,
        majorGridLines: const MajorGridLines(width: 0),
        labelStyle: const TextStyle(
          color: Color(0xffb4b9c3),
        ),
      ),
      primaryYAxis: NumericAxis(
        // minimum: 0,
        // maximum: 50,
        interval: calc == 0 ? null : calc.abs(),
        // rangePadding: ChartRangePadding.additional,
        labelFormat: '{value}',
        axisLine: const AxisLine(width: 0),
        labelStyle: const TextStyle(
          color: Color(0xffb4b9c3),
        ),
      ),
      series: <SplineAreaSeries<ChartData, String>>[
        SplineAreaSeries<ChartData, String>(
          dataSource: <ChartData>[
            ...data.tableAndGraph.map(
              (element) {
                final e = element.toJson();

                String formattedDate =
                    SensorUtils.convertDate(element.createdAt);

                String value =
                    i > 11 ? 'SoilTemp_Avg_${i - 11}' : 'kPa_Avg_${i + 1}';

                return ChartData(
                  time: formattedDate,
                  value: e[value].toStringAsFixed(2),
                );
              },
            ),
          ],
          xValueMapper: (ChartData data, _) => data.time,
          yValueMapper: (ChartData data, _) =>
              double.parse(data.value.replaceAll(',', '')),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Colors.deepOrange.withOpacity(0.5),
              Colors.deepOrange.withOpacity(0.2),
            ],
          ),
        ),
      ],
    );
  }
}
