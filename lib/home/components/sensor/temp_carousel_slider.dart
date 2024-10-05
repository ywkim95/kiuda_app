import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podo_darae_lab/home/components/sensor/temp_carousel_page.dart';
import 'package:podo_darae_lab/home/model/temp_result_data_model.dart';

class TempCarouselSlider extends ConsumerStatefulWidget {
  const TempCarouselSlider({
    super.key,
    required this.data,
    required this.carouselController,
    required this.name,
    required this.keys,
    required this.index,
  });
  final TempResultDataModel data;
  final CarouselController carouselController;
  final String name;
  final List<String> keys;
  final int index;
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _TempCarouselSliderState();
}

class _TempCarouselSliderState extends ConsumerState<TempCarouselSlider> {
  late final CarouselController _carouselController = widget.carouselController;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      carouselController: _carouselController,
      itemCount: 24,
      options: CarouselOptions(
        initialPage: widget.index,
        viewportFraction: 1,
        height: 500.h,
        enableInfiniteScroll: true,
        autoPlay: false,
      ),
      itemBuilder: (context, i, realIndex) {
        return TempCarouselPage(
          data: widget.data,
          index: i,
          name: widget.keys[i],
        );
      },
    );
  }
}
