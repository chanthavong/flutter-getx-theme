import 'package:flutter/material.dart';
import 'package:flutter_getx_themes/config/app_config.dart';

import 'package:get/get.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeView: ENV:' + Environment.config.mode),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Obx(() {
              return Text(
                '${controller.count}',
                style: Theme.of(context).textTheme.headline4,
              );
            }),
            const Divider(),
            Text('language'.tr),
            TextButton(
              child: const Text('lo'),
              onPressed: (() {
                var locale = Locale('lo', 'LA');
                Get.updateLocale(locale);
              }),
            ),
            TextButton(
              child: const Text('en'),
              onPressed: (() {
                var locale = Locale('en', 'US');
                Get.updateLocale(locale);
              }),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.increment,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
