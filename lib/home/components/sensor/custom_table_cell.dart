import 'package:flutter/material.dart';

class CustomTableCell extends StatelessWidget {
  const CustomTableCell({
    super.key,
    required this.value,
    this.color,
  });
  final String value;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color ?? Colors.white,
        border: Border.all(
          color: const Color(0xFFEAECF0),
        ),
      ),
      alignment: Alignment.center,
      child: Text(
        value,
        style: const TextStyle(
          fontWeight: FontWeight.w300,
          color: Color(0xFF333333),
        ),
      ),
    );
  }
}
