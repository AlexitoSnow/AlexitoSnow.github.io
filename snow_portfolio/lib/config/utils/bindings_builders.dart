import 'package:get/get.dart';

import '../../presentation/controllers/about_me/about_me_controller.dart';
import '../../presentation/controllers/extracurricular/extracurricular_controller.dart';
import '../../presentation/controllers/home/home_controller.dart';
import '../../presentation/controllers/projects/projects_controller.dart';
import '../../presentation/controllers/skills/skills_controller.dart';
import '../../presentation/controllers/volunteering/volunteering_controller.dart';

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
