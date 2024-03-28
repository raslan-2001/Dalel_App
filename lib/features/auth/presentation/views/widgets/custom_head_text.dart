import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomHeadText extends StatelessWidget {
  const CustomHeadText({super.key, required this.headText});
  final String headText;
  @override
  Widget build(BuildContext context) {
    return Text(
      headText,
      textAlign: TextAlign.center,
      style: Styles.textStyle28.copyWith(color: AppColor.black),
    );
  }
}
