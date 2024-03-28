// ignore_for_file: must_be_immutable

import 'package:dalel_app/cache/cache_helper.dart';
import 'package:dalel_app/core/services/service_locator.dart';
import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/app_strings.dart';
import 'package:dalel_app/core/utils/styles.dart';
import 'package:dalel_app/core/widgets/custom_button.dart';
import 'package:dalel_app/features/onboarding/data/model/on_boarding_model.dart';
import 'package:dalel_app/features/onboarding/presentation/views/widgets/category.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  final controller = PageController(
    initialPage: 0,
  );

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.offWhite,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: () {
              GoRouter.of(context).pushReplacement("/loginView");

              getIt<CacheHelper>()
                  .saveData(key: "isOnBoardingVisited", value: true);
            },
            child: Text(
              "Skip",
              style: Styles.textStyle16.copyWith(color: Colors.black),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Category(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            const SizedBox(height: 80),
            currentIndex == onBoardingData.length - 1
                ? Column(
                    children: [
                      CustomButton(
                        text: AppStrings.createAccount,
                        onPressed: () {
                          getIt<CacheHelper>().saveData(
                              key: "isOnBoardingVisited", value: true);
                          GoRouter.of(context).pushReplacement("/signUpView");
                        },
                      ),
                      const SizedBox(height: 16),
                      GestureDetector(
                        onTap: () {
                          getIt<CacheHelper>().saveData(
                              key: "isOnBoardingVisited", value: true);
                          GoRouter.of(context).pushReplacement("/loginView");
                        },
                        child: Text(
                          "Login Now",
                          style: Styles.textStyle16
                              .copyWith(decoration: TextDecoration.underline),
                        ),
                      ),
                    ],
                  )
                : CustomButton(
                    text: AppStrings.next,
                    onPressed: () {
                      controller.nextPage(
                          duration: const Duration(milliseconds: 200),
                          curve: Curves.bounceIn);
                    },
                  ),
            const SizedBox(height: 18),
          ],
        ),
      ),
    );
  }
}
