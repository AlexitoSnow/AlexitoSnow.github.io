import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:snow_portfolio/config/config.dart';

import '../../../generated/translations.g.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit()
      : super(HomeState(
          themeMode: ThemeMode.system,
          currentLocale: LocaleSettings.currentLocale,
        ));

  final String email = 'alexitosnow2002@gmail.com';
  final String phone = '+593983678577';

  List<Pages> get pages => [
        Pages(
          title: texts.tabs.about,
          route: Routes.ABOUT,
        ),
        Pages(
          title: texts.tabs.technologies,
          route: Routes.TECHNOLOGIES,
        ),
        Pages(
          title: texts.tabs.projects,
          route: Routes.PROJECTS,
        ),
      ];

  AppLocale get es => AppLocale.es;

  AppLocale get en => AppLocale.en;

  void switchTheme(Brightness brightness) {
    emit(HomeState(
      currentPage: state.currentPage,
      currentLocale: state.currentLocale,
      themeMode:
          brightness == Brightness.dark ? ThemeMode.light : ThemeMode.dark,
    ));
  }

  void changePage(int index) {
    emit(HomeState(
        currentPage: index,
        themeMode: state.themeMode,
        currentLocale: state.currentLocale));
    AppPages.router.goNamed(pages[index].route);
  }

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  void changeLocale(AppLocale locale) {
    Intl.defaultLocale = locale.languageCode;
    LocaleSettings.setLocale(locale);
    emit(HomeState(
      currentPage: state.currentPage,
      themeMode: state.themeMode,
      currentLocale: locale,
    ));
  }
}

class Pages {
  String title;
  String route;

  Pages({
    required this.title,
    required this.route,
  });
}
