import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/styles.dart';
import 'package:dalel_app/features/auth/presentation/views_model/cubits/cubit/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomAgreeRow extends StatefulWidget {
  const CustomAgreeRow({super.key});

  @override
  State<CustomAgreeRow> createState() => _CustomAgreeRowState();
}

class _CustomAgreeRowState extends State<CustomAgreeRow> {
  @override
  Widget build(BuildContext context) {
    AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);

    return Row(
      children: [
        Checkbox(
          value: authCubit.termsAndCondition,
          onChanged: (val) {
            setState(() {
              authCubit.termsAndConditionCheckBox(newValue: val);
            });
          },
          checkColor: AppColor.checkBoxColor,
        ),
        Text(
          "I have agree to our ",
          style: Styles.textStyle14,
        ),
        Text(
          "Terms and Condition",
          style:
              Styles.textStyle14.copyWith(decoration: TextDecoration.underline),
        ),
      ],
    );
  }
}
