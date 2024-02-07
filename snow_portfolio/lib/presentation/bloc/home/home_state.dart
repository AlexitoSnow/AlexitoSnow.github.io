part of 'home_cubit.dart';

final class HomeState {
  int currentPage;
  ThemeMode themeMode;
  AppLocale currentLocale;
  HomeState({
    this.currentPage = 0,
    required this.themeMode,
    required this.currentLocale,
  });
}
