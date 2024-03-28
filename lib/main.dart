import 'package:dalel_app/app/dalel_app.dart';
import 'package:dalel_app/cache/cache_helper.dart';
import 'package:dalel_app/core/functions/auth_changes.dart';
import 'package:dalel_app/core/services/service_locator.dart';
import 'package:dalel_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setupServiecsLocator();
  await getIt<CacheHelper>().init();
  checkAuthChanges();

  runApp(const DalelApp());
}
