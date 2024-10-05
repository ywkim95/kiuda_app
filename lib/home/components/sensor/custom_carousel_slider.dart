import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podo_darae_lab/home/components/sensor/custom_carousel_page.dart';
import 'package:podo_darae_lab/home/model/device_model.dart';
import 'package:podo_darae_lab/home/model/result_data_model.dart';

class CustomCarouselSlider extends StatefulWidget {
  const CustomCarouselSlider({
    super.key,
    required this.data,
    required this.carouselController,
    required this.device,
    required this.index,
  });
  final ResultDataModel data;
  final CarouselController carouselController;
  final DeviceModel device;
  final int index;

  @override
  State<CustomCarouselSlider> createState() => _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {
  late final CarouselController _carouselController = widget.carouselController;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      carouselController: _carouselController,
      itemCount: widget.device.sensors!.length,
      options: CarouselOptions(
        initialPage: widget.index,
        viewportFraction: 1,
        height: 500.h,
        enableInfiniteScroll: true,
        autoPlay: false,
      ),
      itemBuilder: (context, i, realIndex) {
        return CustomCarouselPage(
          data: widget.data,
          device: widget.device,
          index: i,
        );
      },
    );
  }
}
