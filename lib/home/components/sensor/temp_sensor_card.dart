import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podo_darae_lab/home/components/sensor/carousel_button.dart';
import 'package:podo_darae_lab/home/components/sensor/temp_carousel_slider.dart';
import 'package:podo_darae_lab/home/provider/temp_result_data_provider.dart';

class TempSensorCard extends ConsumerStatefulWidget {
  const TempSensorCard({
    super.key,
    required this.index,
    required this.name,
    required this.deviceId,
    required this.keys,
  });
  final int index;
  final String name;
  final int deviceId;
  final List<String> keys;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _TempSensorCardState();
}

class _TempSensorCardState extends ConsumerState<TempSensorCard> {
  final CarouselController _carouselController = CarouselController();
  int currentPageIndex = 0;

  int totalItems = 24;

  late String name = widget.name;

  bool hasNextPage() {
    return currentPageIndex < totalItems - 1;
  }

  bool hasPreviousPage() {
    return currentPageIndex > 0;
  }

  @override
  void initState() {
    currentPageIndex = widget.index;

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final tempResultData = ref.watch(tempResultDataProvider);

    if (tempResultData == null) {
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
            TempCarouselSlider(
              data: tempResultData,
              carouselController: _carouselController,
              name: name,
              keys: widget.keys,
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
