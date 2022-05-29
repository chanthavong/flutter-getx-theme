import 'package:flutter/material.dart';
import 'package:flutter_getx_themes/app/routes/app_pages.dart';
import 'package:flutter_getx_themes/component/app_drawer.dart';
import 'package:flutter_getx_themes/config/app_config.dart';

import 'package:get/get.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('GetX Theme'),
        centerTitle: true,
      ),
      drawer: const AppDrawer(),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text('Application Run On Mode:' + Environment.config.mode),
            const SizedBox(height: 20),
            Obx(() {
              return Text(
                '${controller.count}',
                style: Theme.of(context).textTheme.headline4,
              );
            }),
            Text('language'.tr),
            const SizedBox(height: 20),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: const Text('Lao'),
                  onPressed: (() {
                    var locale = const Locale('lo', 'LA');
                    Get.updateLocale(locale);
                  }),
                ),
                TextButton(
                  child: const Text('English'),
                  onPressed: (() {
                    var locale = const Locale('en', 'US');
                    Get.updateLocale(locale);
                  }),
                ),
              ],
            ),
            TextButton(
                onPressed: () => Navigator.pushNamed(context, Routes.USER_MAP),
                child: Text('map'))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
