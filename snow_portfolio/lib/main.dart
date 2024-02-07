import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';
import 'package:snow_portfolio/config/config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snow_portfolio/presentation/bloc/bloc.dart';
import 'generated/translations.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  LocaleSettings.useDeviceLocale();
  Intl.defaultLocale =
      WidgetsBinding.instance.platformDispatcher.locale.languageCode;

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => HomeCubit(),
        ),
        BlocProvider(
          create: (context) => AboutMeCubit(),
        ),
        BlocProvider(
          create: (context) => TechnologiesCubit(),
        ),
        BlocProvider(
          create: (context) => ProjectsCubit(),
        ),
      ],
      child: TranslationProvider(
        child: const MainPage(),
      ),
    ),
  );
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    var homeState = context.watch<HomeCubit>().state;
    
    return MaterialApp.router(
      title: 'Alexander Nieves Portfolio',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: AppLocaleUtils.supportedLocales,
      locale: homeState.currentLocale.flutterLocale,
      theme: PortfolioTheme().themeData,
      darkTheme: PortfolioTheme(useDarkMode: true).themeData,
      themeMode: homeState.themeMode,
      debugShowCheckedModeBanner: false,
      routerConfig: AppPages.router,
    );
  }
}
