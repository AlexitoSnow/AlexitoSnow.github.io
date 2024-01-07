import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../about_me/views/about_me_view.dart';
import '../../extracurricular/views/extracurricular_view.dart';
import '../../projects/views/projects_view.dart';
import '../../skills/views/skills_view.dart';
import '../../volunteering/views/volunteering_view.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final Map<String, Widget> pagesMap = {
    'About': const AboutMeView(),
    'Skills': const SkillsView(),
    'Projects': const ProjectsView(),
    'Extracurricular': const ExtracurricularView(),
    'Volunteering': const VolunteeringView(),
  };

  final String email = 'alexitosnow2002@gmail.com';
  final String phone = '+593 98 367 8577';
  final line = 'Hi Alexander, I would like to contact you';

  late final PageController pageController;

  late final TabController tabController;

  @override
  void onInit() {
    super.onInit();
    pageController = PageController(initialPage: 0);
    tabController = TabController(length: pagesMap.length, vsync: this);
    pageController.addListener(() {
      if (pageController.page!.round() != tabController.index) {
        tabController.animateTo(pageController.page!.round());
      }
    });

    tabController.addListener(() async {
      if (!tabController.indexIsChanging) {
        await changePage(tabController.index);
      }
    });
  }

  @override
  void onClose() {
    pageController.dispose();
    tabController.dispose();
    super.onClose();
  }

  List<String> get pageNames => pagesMap.keys.toList();

  List<Widget> get pages => pagesMap.values.toList();

  Future<void> changePage(int index) async {
    await pageController.animateToPage(
      index,
      duration: const Duration(seconds: 1),
      curve: Curves.ease,
    );
  }

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }
}
