import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snow_portfolio/config/config.dart';

import '../../bloc/bloc.dart';

class TechnologiesView extends StatefulWidget {
  const TechnologiesView({Key? key}) : super(key: key);

  @override
  _TechnologiesViewState createState() => _TechnologiesViewState();
}

class _TechnologiesViewState extends State<TechnologiesView>
    with TickerProviderStateMixin {
  late final AnimationController _controllerLanguages;
  late final AnimationController _controllerFrameworks;
  late final AnimationController _controllerDatabases;
  late final AnimationController _controllerTools;
  final style = const TextStyle(fontSize: 20);

  @override
  void initState() {
    super.initState();
    _controllerLanguages = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _controllerFrameworks = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _controllerDatabases = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );
    _controllerTools = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _startAnimations();
  }

  void _startAnimations() async {
    await Future.delayed(const Duration(seconds: 1));
    _controllerLanguages.forward();
    await Future.delayed(const Duration(seconds: 1));
    _controllerFrameworks.forward();
    await Future.delayed(const Duration(seconds: 1));
    _controllerDatabases.forward();
    await Future.delayed(const Duration(seconds: 1));
    _controllerTools.forward();
  }

  @override
  Widget build(BuildContext context) {
    final controller = context.watch<TechnologiesCubit>();
    return Column(
      key: ValueKey(context.watch<HomeCubit>().state.currentLocale.toString()),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FadeTransition(
          opacity: _controllerLanguages,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(controller.languagesText, style: style),
              DevIconsList(iconList: controller.languages, radius: 40),
            ],
          ),
        ),
        FadeTransition(
          opacity: _controllerFrameworks,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(controller.frameworksText, style: style),
              DevIconsList(iconList: controller.frameworks, radius: 40),
            ],
          ),
        ),
        FadeTransition(
          opacity: _controllerDatabases,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(controller.databasesText, style: style),
              DevIconsList(iconList: controller.databases, radius: 40),
            ],
          ),
        ),
        FadeTransition(
          opacity: _controllerTools,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(controller.toolsText, style: style),
              DevIconsList(iconList: controller.tools, radius: 40),
            ],
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controllerLanguages.dispose();
    _controllerFrameworks.dispose();
    _controllerDatabases.dispose();
    _controllerTools.dispose();
    super.dispose();
  }
}
