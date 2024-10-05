import 'package:flutter/material.dart';
import 'package:podo_darae_lab/home/components/sensor/custom_chart.dart';
import 'package:podo_darae_lab/home/components/sensor/table_body.dart';
import 'package:podo_darae_lab/home/components/sensor/table_header.dart';
import 'package:podo_darae_lab/home/model/device_model.dart';
import 'package:podo_darae_lab/home/model/result_data_model.dart';

class CustomCarouselPage extends StatelessWidget {
  const CustomCarouselPage({
    super.key,
    required this.data,
    required this.device,
    required this.index,
  });
  final ResultDataModel data;
  final DeviceModel device;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(top: 4.0),
          alignment: Alignment.center,
          width: double.maxFinite,
          child: Text(
            device.sensors![index].name!,
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
                  child: CustomChart(data: data, i: index),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 0),
                    child: Column(
                      children: [
                        TableHeader(device: device, index: index),
                        TableBody(data: data, index: index),
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
