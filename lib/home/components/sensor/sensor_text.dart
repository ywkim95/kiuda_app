import 'package:flutter/material.dart';

class SensorText extends StatelessWidget {
  const SensorText({
    super.key,
    required this.text,
    required this.fontSize,
  });

  final String text;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      // '25.4 ℃',
      ' $text',
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
      ),
      maxLines: 1,
      overflow: TextOverflow.visible,
    );
  }
}
