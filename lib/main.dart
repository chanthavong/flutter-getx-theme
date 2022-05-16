import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/app_pages.dart';
import 'config/app_config.dart';
import 'config/app_theme.dart';
import 'translate/localization_service.dart';

Future<void> main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  const String environment = String.fromEnvironment(
    'ENVIRONMENT',
    defaultValue: Environment.dev,
  );

  Environment.initConfig(environment);

  runApp(const MainApp(initialRoute: Routes.HOME));
}

class MainApp extends StatelessWidget {
  final String initialRoute;
  const MainApp({required this.initialRoute, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: initialRoute,
      getPages: AppPages.routes,
      translations: LocalizationService(),
      fallbackLocale: const Locale('lo', 'LA'),
      locale: Get.deviceLocale,
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
    );
  }
}
