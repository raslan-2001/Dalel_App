// ignore_for_file: must_be_immutable

import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({
    super.key,
    required this.labelText,
    required this.obscureText,
    this.icon,
    this.myController,
    this.color,
    this.onTap,
  });
  final String labelText;
  final bool obscureText;
  final IconData? icon;
  final TextEditingController? myController;
  void Function(TapDownDetails)? onTapDown;
  final Color? color;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      validator: (value) {
        if (value!.isEmpty) {
          return "This field is required";
        }
        return null;
      },
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: Styles.textStyle14.copyWith(color: AppColor.deepGrey),
        suffixIcon: IconButton(
          onPressed: onTap,
          icon: Icon(
            icon,
            color: color,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColor.lightGrey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: AppColor.lightGrey),
        ),
      ),
    );
  }
}
