import 'package:get/get.dart';

import '../modules/about_me/controllers/about_me_controller.dart';
import '../modules/extracurricular/controllers/extracurricular_controller.dart';
import '../modules/home/controllers/home_controller.dart';
import '../modules/projects/controllers/projects_controller.dart';
import '../modules/skills/controllers/skills_controller.dart';
import '../modules/volunteering/controllers/volunteering_controller.dart';

abstract class BindingsBuilders {
  static BindingsBuilder<dynamic> get bindings {
    return BindingsBuilder(() {
      Get.put<HomeController>(HomeController());
      Get.put<AboutMeController>(AboutMeController());
      Get.lazyPut<ProjectsController>(() => ProjectsController());
      Get.lazyPut<VolunteeringController>(() => VolunteeringController());
      Get.lazyPut<ExtracurricularController>(() => ExtracurricularController());
      Get.lazyPut<SkillsController>(() => SkillsController());
    });
  }
}
