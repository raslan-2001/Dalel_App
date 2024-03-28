import 'package:dalel_app/core/utils/app_color.dart';
import 'package:dalel_app/core/utils/app_router.dart';
import 'package:flutter/material.dart';

class DalelApp extends StatelessWidget {
  const DalelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData().copyWith(scaffoldBackgroundColor: AppColor.offWhite),
      debugShowCheckedModeBanner: false,
      routerConfig: appRoute,
    );
  }
}
