import 'package:flutter/material.dart';
import 'package:podo_darae_lab/common/utilities/sensor_utils.dart';
import 'package:podo_darae_lab/home/components/sensor/chart_data.dart';
import 'package:podo_darae_lab/home/model/result_data_model.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CustomChart extends StatelessWidget {
  const CustomChart({
    super.key,
    required this.data,
    required this.i,
  });
  final ResultDataModel data;
  final int i;

  @override
  Widget build(BuildContext context) {
    final calc = SensorUtils.calculateData(data, i);
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
        interval: calc == 0 ? null : calc,
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

                String formattedDate = SensorUtils.convertDate(element.endDate);

                return ChartData(
                  time: formattedDate,
                  value: e['s${i + 1}'].average.toString(),
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
