import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:podo_darae_lab/common/const/colors_const.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.errorText,
    this.hintText,
    this.obscureText = false,
    required this.onChanged,
    this.prefixIcon,
    this.fillColor,
    this.textColor,
    this.padding,
    this.keyboardType,
    this.inputFormatters,
    this.textAlign,
    this.controller,
    this.fontSize,
    // this.maxLength,
  });
  final bool obscureText;
  final String? hintText;
  final String? errorText;
  final ValueChanged<String> onChanged;
  final Widget? prefixIcon;
  final Color? fillColor;
  final Color? textColor;
  final EdgeInsetsGeometry? padding;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? inputFormatters;
  final TextAlign? textAlign;
  final TextEditingController? controller;
  final double? fontSize;
  // final int? maxLength;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: onChanged,
      textAlign: textAlign ?? TextAlign.start,
      cursorColor: textColor ?? Colors.white,
      obscureText: obscureText,
      // maxLength: maxLength,
      keyboardType: keyboardType,
      inputFormatters: inputFormatters,
      maxLines: 1,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        prefixIconConstraints: const BoxConstraints(
          minHeight: 0,
          maxHeight: 55,
        ),
        contentPadding: padding ?? const EdgeInsets.all(20),
        hintText: hintText,
        errorText: errorText,
        hintStyle: TextStyle(
            color: textColor ?? Colors.white, fontSize: fontSize ?? 16.0),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        fillColor: fillColor ?? TEXT_BOX_COLOR,
        filled: true,
        isCollapsed: true,
      ),
      style: TextStyle(
        color: textColor ?? Colors.white,
        fontSize: fontSize ?? 16.0,
      ),
    );
  }
}
