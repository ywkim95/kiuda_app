import 'package:flutter/material.dart';
import 'package:podo_darae_lab/home/components/sensor/temp_chart.dart';
import 'package:podo_darae_lab/home/components/sensor/temp_table_body.dart';
import 'package:podo_darae_lab/home/components/sensor/temp_table_header.dart';
import 'package:podo_darae_lab/home/model/temp_result_data_model.dart';

class TempCarouselPage extends StatelessWidget {
  const TempCarouselPage({
    super.key,
    required this.data,
    required this.index,
    required this.name,
  });
  final TempResultDataModel data;
  final int index;
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 4.0),
          alignment: Alignment.center,
          width: double.maxFinite,
          child: Text(
            name,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20.0,
              color: Colors.black,
            ),
          ),
        ),
        // ...data.chartData!.map(
        //   (e) => Text('${e[0]}, ${e[index + 1]}'),
        // ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 16.0, 8.0, 0),
            child: Column(
              children: [
                Expanded(
                  flex: 5,
                  child: TempChart(data: data, i: index),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 0),
                    child: Column(
                      children: [
                        TempTableHeader(name: name, index: index),
                        TempTableBody(data: data, index: index),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
