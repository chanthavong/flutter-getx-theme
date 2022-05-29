import 'package:get/get.dart';

import 'user_map_controller.dart';

class UserMapBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<UserMapController>(
      () => UserMapController(),
    );
  }
}
