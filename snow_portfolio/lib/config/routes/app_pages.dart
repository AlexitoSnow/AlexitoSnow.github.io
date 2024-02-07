import 'package:go_router/go_router.dart';
import 'package:snow_portfolio/presentation/screens/screens.dart';
// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.ABOUT;

  static final router = GoRouter(
    initialLocation: INITIAL,
    routes: [
      ShellRoute(
        routes: [
          GoRoute(
            path: Routes.ABOUT,
            name: Routes.ABOUT,
            builder: (_, __) => const AboutMeView(),
          ),
          GoRoute(
            path: Routes.TECHNOLOGIES,
            name: Routes.TECHNOLOGIES,
            builder: (_, __) => TechnologiesView(),
          ),
          GoRoute(
            path: Routes.PROJECTS,
            name: Routes.PROJECTS,
            builder: (_, __) => const ProjectsView(),
          ),
        ],
        builder: (_, __, child) => HomeView(page: child),
      ),
    ],
  );
}
