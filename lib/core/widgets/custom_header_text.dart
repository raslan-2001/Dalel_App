import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomHeaderText extends StatelessWidget {
  const CustomHeaderText({super.key, required this.headerText});
  final String headerText;
  @override
  Widget build(BuildContext context) {
    return Text(
      headerText,
      style: Styles.textStyle20.copyWith(color: AppColor.deepBrown),
    );
  }
}
