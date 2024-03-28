import 'package:dalel_app/cache/cache_helper.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiecsLocator() {
  getIt.registerSingleton<CacheHelper>(CacheHelper());
}
