import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomCheckRow extends StatelessWidget {
  const CustomCheckRow(
      {super.key, required this.question, required this.type, this.onPressed});
  final String question, type;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          question,
          style: Styles.textStyle14.copyWith(color: AppColor.deepGrey),
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            type,
            style: Styles.textStyle14
                .copyWith(color: AppColor.signInAndSignUpColor),
          ),
        )
      ],
    );
  }
}
