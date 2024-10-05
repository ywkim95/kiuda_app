// ignore: library_prefixes

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podo_darae_lab/home/components/sensor/carousel_button.dart';
import 'package:podo_darae_lab/home/components/sensor/custom_carousel_slider.dart';
import 'package:podo_darae_lab/home/model/device_model.dart';
import 'package:podo_darae_lab/home/provider/chart_graph_provider.dart';
import 'package:podo_darae_lab/home/provider/device_provider.dart';

class SensorCard extends ConsumerStatefulWidget {
  const SensorCard({
    super.key,
    required this.index,
    required this.deviceId,
  });
  final int index;
  final int deviceId;

  @override
  ConsumerState<SensorCard> createState() => _SensorCardState();
}

class _SensorCardState extends ConsumerState<SensorCard> {
  // CarouselController를 통하여 좌우로 넘길 수 있는 뷰를 만든다.
  final CarouselController _carouselController = CarouselController();
  int currentPageIndex = 0;

  int totalItems = 0;

  late DeviceModel device;

  bool hasNextPage() {
    return currentPageIndex < totalItems - 1;
  }

  bool hasPreviousPage() {
    return currentPageIndex > 0;
  }

  @override
  void initState() {
    currentPageIndex = widget.index;
    device =
        ref.read(deviceProvider).firstWhere((e) => e.id == widget.deviceId);
    totalItems = device.sensors!.length;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // chartDataModel을 바라본다.
    final chartGraphData = ref.watch(chartGraphProvider);

    if (chartGraphData == null) {
      return const Center(
        child: CircularProgressIndicator.adaptive(),
      );
    }
    return ListView(
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      children: [
        Container(
          alignment: Alignment.centerRight,
          width: double.maxFinite,
          child: IconButton(
            icon: Icon(
              Icons.close_rounded,
              size: 18.h,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        Stack(
          children: [
            CustomCarouselSlider(
              data: chartGraphData,
              carouselController: _carouselController,
              device: device,
              index: widget.index,
            ),
            CarouselButton(carouselController: _carouselController),
          ],
        ),

        // Text('$index 번 센서 그래프 및 테이블 보기'),
        // ...data.chartData!.map((e) => Text('$e')),
      ],
    );
  }
}

// Chart에 Data를 담기위하여 만든 ModelClass
