import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';
import 'package:get/get.dart';
import '../controllers/projects_controller.dart';
import 'project_card.dart';

class ProjectsView extends GetView<ProjectsController> {
  const ProjectsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: (BuildContext context, int index) => ProjectCard(
        projectModel: controller.projectItems[index],
        rotationAngle: index % 2 == 0 ? 0.2 : -0.2,
      ),
      itemCount: controller.projectItems.length,
      layout: SwiperLayout.TINDER,
      itemWidth: double.infinity,
      itemHeight: 600,
      pagination: SwiperPagination(
        builder: DotSwiperPaginationBuilder(
          activeColor: Get.theme.colorScheme.primary,
          color: Get.theme.colorScheme.secondary,
        ),
      ),
      control: const SwiperControl(),
    );
  }
}
