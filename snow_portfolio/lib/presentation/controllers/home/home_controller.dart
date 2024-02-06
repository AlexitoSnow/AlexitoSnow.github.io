import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart'
    show ItemScrollController;
import '../../../generated/translations.g.dart';
import '../../screens/about_me/about_me_view.dart';
import '../../screens/extracurricular/extracurricular_view.dart';
import '../../screens/projects/projects_view.dart';
import '../../screens/skills/skills_view.dart';
import '../../screens/volunteering/volunteering_view.dart';

class HomeController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final String email = 'alexitosnow2002@gmail.com';
  final String phone = '+593 98 367 8577';
  final line = 'Hi Alexander, I would like to contact you';
  final _isDark = false.obs;

  final RxInt _currentPage = 0.obs;

  final itemScrollController = ItemScrollController();

  int get currentPage => _currentPage.value;

  set currentPage(int value) => _currentPage.value = value;

  bool get isDark {
    return _isDark.value;
  }

  AppLocale get es => AppLocale.es;

  AppLocale get en => AppLocale.en;

  AppLocale get currentLocale => LocaleSettings.currentLocale;

  List<Header> get headers => [
        Header(
          title: texts.tabs.about,
          page: const AboutMeView(),
          icon: const Icon(Icons.person),
        ),
        Header(
          title: texts.tabs.skills,
          page: const SkillsView(),
          icon: const Icon(Icons.school),
        ),
        Header(
          title: texts.tabs.projects,
          page: const ProjectsView(),
          icon: const Icon(Icons.work),
        ),
        Header(
          title: texts.tabs.extracurricular,
          page: const ExtracurricularView(),
          icon: const Icon(Icons.star),
        ),
        Header(
          title: texts.tabs.volunteering,
          page: const VolunteeringView(),
          icon: const Icon(Icons.favorite),
        ),
      ];

  List<String> get titles => headers.map((e) => e.title).toList();

  List<Widget> get pages => headers.map((e) => e.page).toList();

  List<Widget> get icons => headers.map((e) => e.icon).toList();

  void changePage(int index) {
    itemScrollController.scrollTo(
      index: index,
      duration: const Duration(seconds: 1),
      curve: Curves.easeIn,
    );
    currentPage = index;
  }

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  void changeTheme() {
    Get.changeThemeMode(
      Get.isDarkMode ? ThemeMode.light : ThemeMode.dark,
    );
    _isDark.toggle();
  }

  void changeLocale(AppLocale code) {
    LocaleSettings.setLocale(code);
    Intl.defaultLocale = code.languageCode;
    Get.updateLocale(Locale(code.languageCode));
  }
}

class Header {
  String title;
  Widget page;
  Widget icon;

  Header({
    required this.title,
    required this.page,
    required this.icon,
  });
}
