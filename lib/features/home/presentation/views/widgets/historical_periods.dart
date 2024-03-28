import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HistoricalPeriods extends StatelessWidget {
  const HistoricalPeriods({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 164,
      // height: 96,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
              color: AppColor.grey, blurRadius: 12, offset: const Offset(5, 7)),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            "Ancient \n Egypt",
            style: Styles.textStyle16.copyWith(
              color: AppColor.deepBrown,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            width: 47,
            height: 64,
            child: Image.asset(Assets.assetsImagesFrame27),
          ),
        ],
      ),
    );
  }
}
