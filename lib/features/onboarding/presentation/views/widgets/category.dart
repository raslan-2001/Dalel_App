// ignore_for_file: must_be_immutable

import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/styles.dart';
import 'package:dalel_app/features/onboarding/data/model/on_boarding_model.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Category extends StatelessWidget {
  Category({
    super.key,
    required this.controller,
    required this.onPageChanged,
  });

  final PageController controller;
  final void Function(int)? onPageChanged;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 600,
      child: PageView.builder(
        onPageChanged: onPageChanged,
        controller: controller,
        physics: const BouncingScrollPhysics(),
        itemCount: onBoardingData.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * .4,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(onBoardingData[index].image),
              ),
              const SizedBox(height: 24),
              Container(
                alignment: Alignment.center,
                child: SmoothPageIndicator(
                    controller: controller, // PageController
                    count: 3,
                    effect: ExpandingDotsEffect(
                      dotHeight: 6,
                      dotWidth: 10,
                      dotColor: AppColor.grey,
                      activeDotColor: AppColor.deepBrown,
                    ),
                    onDotClicked: (index) {}),
              ),
              const SizedBox(height: 36),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .75,
                    child: Text(
                      onBoardingData[index].title,
                      style: Styles.textStyle24,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .75,
                    child: Text(
                      onBoardingData[index].subTitle,
                      style: Styles.textStyle16,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
