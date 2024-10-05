import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:podo_darae_lab/common/components/circle_arrow.dart';

class CarouselButton extends StatefulWidget {
  const CarouselButton({super.key, required this.carouselController});
  final CarouselController carouselController;

  @override
  State<CarouselButton> createState() => _CarouselButtonState();
}

class _CarouselButtonState extends State<CarouselButton> {
  late final CarouselController _carouselController = widget.carouselController;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 0,
      right: 0,
      top: -8,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            icon: const CircleArrow(
              isRight: false,
            ),
            onPressed: () {
              _carouselController.previousPage();
            },
          ),
          IconButton(
            icon: const CircleArrow(
              isRight: true,
            ),
            onPressed: () {
              _carouselController.nextPage();
            },
          ),
        ],
      ),
    );
  }
}
