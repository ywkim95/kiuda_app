import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:podo_darae_lab/common/components/custom_text_form_field.dart';

class ValueControlBox extends StatefulWidget {
  const ValueControlBox({
    super.key,
    required this.onChanged,
    required this.add,
    required this.remove,
    required this.controller,
  });

  final ValueChanged<String> onChanged;
  final VoidCallback add;
  final VoidCallback remove;
  final TextEditingController controller;

  @override
  State<ValueControlBox> createState() => _ValueControlBoxState();
}

class _ValueControlBoxState extends State<ValueControlBox> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          visualDensity: const VisualDensity(
            horizontal: -4,
            vertical: -4,
          ),
          padding: EdgeInsets.zero,
          style: IconButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          onPressed: widget.remove,
          icon: const Icon(
            Icons.remove_rounded,
          ),
        ),
        Container(
          width: 75.w,
          padding: EdgeInsets.symmetric(vertical: 4.h),
          child: CustomTextFormField(
            fontSize: 19.sp,
            controller: widget.controller,
            onChanged: widget.onChanged,
            textAlign: TextAlign.center,
            fillColor: const Color(0xFFEBEDF1),
            textColor: Colors.black,
            padding: EdgeInsets.all(6.w),
            keyboardType: const TextInputType.numberWithOptions(
              signed: true,
            ),
            inputFormatters: [
              FilteringTextInputFormatter.allow(
                RegExp('[0-9.-]'),
              ),
            ],
            // maxLength: 10,
          ),
        ),
        IconButton(
          visualDensity: const VisualDensity(
            horizontal: -4,
            vertical: -4,
          ),
          padding: EdgeInsets.zero,
          style: IconButton.styleFrom(
            padding: EdgeInsets.zero,
          ),
          onPressed: widget.add,
          icon: const Icon(
            Icons.add_rounded,
          ),
        ),
      ],
    );
  }
}
