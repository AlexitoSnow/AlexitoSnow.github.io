import 'package:get/get.dart';

import '../controllers/about_me_controller.dart';

class AboutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AboutMeController>(
      () => AboutMeController(),
    );
  }
}
