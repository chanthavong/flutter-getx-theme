import 'package:get/get.dart';

import 'package:flutter_getx_themes/app/modules/home/home_binding.dart';
import 'package:flutter_getx_themes/app/modules/home/home_view.dart';
import 'package:flutter_getx_themes/app/modules/setting/setting_binding.dart';
import 'package:flutter_getx_themes/app/modules/setting/setting_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SETTING,
      page: () => SettingView(),
      binding: SettingBinding(),
    ),
  ];
}
