import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class LoginDesgin extends StatelessWidget {
  const LoginDesgin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(color: AppColor.primaryColor),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Spacer(),
          Text(
            "Dalel",
            style: Styles.textStyle34.copyWith(color: AppColor.offWhite),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 102,
                child: Image.asset(
                  Assets.assetsImagesPyramides,
                  fit: BoxFit.fill,
                ),
              ),
              SizedBox(
                height: 128,
                child: Image.asset(Assets.assetsImagesMosque, fit: BoxFit.fill),
              ),
            ],
          )
        ],
      ),
    );
  }
}
