import 'package:flutter/material.dart';
import 'package:flutter_getx_themes/app/routes/app_pages.dart';
import 'package:get/get.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('Mark'),
            accountEmail: const Text('mark@email.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: const NetworkImage(
                  'https://randomuser.me/api/portraits/women/17.jpg'),
              radius: 20,
              backgroundColor: Theme.of(context).platform == TargetPlatform.iOS
                  ? const Color.fromARGB(255, 129, 14, 211)
                  : Colors.white,
            ),
            otherAccountsPictures: const [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://randomuser.me/api/portraits/women/68.jpg'),
              )
            ],
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: Text('home'.tr),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, Routes.HOME);
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: Text('setting'.tr),
            onTap: () {
              Navigator.pop(context);
              Navigator.pushNamed(context, Routes.SETTING);
            },
          )
        ],
      ),
    );
  }
}
