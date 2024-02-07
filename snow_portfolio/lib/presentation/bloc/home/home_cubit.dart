import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:snow_portfolio/config/config.dart';

import '../../../generated/translations.g.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  final String email = 'alexitosnow2002@gmail.com';

  final String phone = '+593983678577';

  HomeCubit()
      : super(HomeState(
          themeMode: ThemeMode.system,
          currentLocale: LocaleSettings.currentLocale,
        )) {
    _loadLastState();
  }
  AppLocale get en => AppLocale.en;

  AppLocale get es => AppLocale.es;

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

  void changeLocale(AppLocale locale) {
    Intl.defaultLocale = locale.languageCode;
    LocaleSettings.setLocale(locale);
    emit(HomeState(
      currentPage: state.currentPage,
      themeMode: state.themeMode,
      currentLocale: locale,
    ));
  }

  void changePage(int index) {
    emit(HomeState(
        currentPage: index,
        themeMode: state.themeMode,
        currentLocale: state.currentLocale));
    AppPages.router.goNamed(pages[index].route);
  }

  @override
  void emit(HomeState newState) {
    super.emit(newState);
    _saveCurrentState();
  }

  String? encodeQueryParameters(Map<String, String> params) {
    return params.entries
        .map((MapEntry<String, String> e) =>
            '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}')
        .join('&');
  }

  void switchTheme(Brightness brightness) {
    emit(HomeState(
      currentPage: state.currentPage,
      currentLocale: state.currentLocale,
      themeMode:
          brightness == Brightness.dark ? ThemeMode.light : ThemeMode.dark,
    ));
  }

  void _loadLastState() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    int currentPage = pref.getInt('currentPage') ?? 0;
    String themeMode = pref.getString('themeMode') ?? 'system';
    String currentLocale = pref.getString('currentLocale') ?? 'en';
    final lastLocale = currentLocale == 'es' ? AppLocale.es : AppLocale.en;
    Intl.defaultLocale = lastLocale.languageCode;
    LocaleSettings.setLocale(lastLocale);

    emit(HomeState(
      currentPage: currentPage,
      themeMode: themeMode == 'dark' ? ThemeMode.dark : ThemeMode.light,
      currentLocale: lastLocale,
    ));
  }

  void _saveCurrentState() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    pref.setInt('currentPage', state.currentPage);
    pref.setString(
        'themeMode', state.themeMode == ThemeMode.dark ? 'dark' : 'light');
    pref.setString(
        'currentLocale', state.currentLocale == AppLocale.es ? 'es' : 'en');
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
