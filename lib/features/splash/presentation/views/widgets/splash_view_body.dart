import 'package:dalel_app/cache/cache_helper.dart';
import 'package:dalel_app/core/services/service_locator.dart';
import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/styles.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    Future.delayed(
      Duration(seconds: 2),
      () {
        bool isOnBoardingVisited =
            getIt<CacheHelper>().getData(key: "isOnBoardingVisited") ?? false;

        if (isOnBoardingVisited == true) {
          if (FirebaseAuth.instance.currentUser == null) {
            GoRouter.of(context).pushReplacement("/loginView");
          } else if (FirebaseAuth.instance.currentUser != null &&
              FirebaseAuth.instance.currentUser!.emailVerified) {
            GoRouter.of(context).pushReplacement("/homeNavBar");
          } else {
            GoRouter.of(context).pushReplacement("/loginView");
          }
        } else {
          GoRouter.of(context).pushReplacement("/onBoardingView");
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "Dalel",
          style: Styles.textStyle64.copyWith(
            color: AppColor.deepBrown,
            fontFamily: "Pacifico",
          ),
        ),
      ),
    );
  }
}
