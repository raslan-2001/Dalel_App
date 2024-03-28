import 'package:dalel_app/core/utils/app_assets.dart';
import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class HistoricalSouvenirs extends StatelessWidget {
  const HistoricalSouvenirs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 74,
      height: 140,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        boxShadow: [
          BoxShadow(
              color: AppColor.grey, blurRadius: 12, offset: const Offset(0, 7)),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 94,
            width: 74,
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(5),
                topRight: Radius.circular(5),
              ),
              child: Image.asset(
                Assets.assetsImagesOldBooks,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const Spacer(),
          Text(
            "Old\nBox",
            style: Styles.textStyle14.copyWith(
              color: AppColor.deepBrown,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
