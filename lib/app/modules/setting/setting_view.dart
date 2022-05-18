import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'setting_controller.dart';

class SettingView extends GetView<SettingController> {
  const SettingView({Key? key}) : super(key: key);

  ListTile itemSetting(String text, Function onTap,
      {IconData icon = Icons.chevron_right, String? value}) {
    return ListTile(
      title: Text(text.tr),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            value!.tr,
            style: const TextStyle(color: Colors.grey),
          ),
          const SizedBox(width: 4),
          Icon(icon, color: Colors.grey)
        ],
      ),
      onTap: () {
        // Get.toNamed(Routes.LANGUAGE);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('setting'.tr),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          // change theme
          Obx(
            () => SwitchListTile(
              title: Text('darkTheme'.tr),
              value: controller.isDarkTheme.value,
              onChanged: (e) {
                controller.isDarkTheme.value = e;
                Get.changeThemeMode(e ? ThemeMode.dark : ThemeMode.light);
              },
            ),
          ),
          itemSetting('language', () {}, value: 'Englist'),
          itemSetting('currency', () {}, value: 'USD'),
        ],
      ),
    );
  }
}
