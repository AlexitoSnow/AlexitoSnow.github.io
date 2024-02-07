import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snow_portfolio/config/config.dart';
import '../../../generated/translations.g.dart';
import '../../bloc/bloc.dart';
import 'footer.dart';
import 'responsive_bar.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key, required this.page});

  final Widget page;

  @override
  Widget build(BuildContext context) {
    final isPhone = context.width <= 800;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: actions,
        title: !isPhone ? ResponsiveBar(isPhone) : null,
        centerTitle: true,
        elevation: 10,
      ),
      drawer: isPhone ? ResponsiveBar(isPhone) : null,
      body: SingleChildScrollView(
        child: Column(
          children: [
            IntrinsicHeight(
              child: page,
            ),
            const Footer(),
          ],
        ).paddingOnly(left: 15, right: 15, top: 15),
      ),
    );
  }

  List<Widget> get actions {
    return [
      BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          final controller = context.watch<HomeCubit>();
          return Row(
            children: [
              IconButton(
                onPressed: () {
                  controller.switchTheme(Theme.of(context).brightness);
                },
                icon: Icon(Theme.of(context).brightness == Brightness.dark
                    ? Icons.dark_mode
                    : Icons.light_mode),
              ),
              PopupMenuButton<AppLocale>(
                onSelected: (value) {
                  controller.changeLocale(value);
                },
                icon: const Icon(Icons.translate),
                itemBuilder: (_) {
                  return [
                    PopupMenuItem(
                      value: controller.en,
                      child: const Text("English"),
                    ),
                    PopupMenuItem(
                      value: controller.es,
                      child: const Text("Español"),
                    ),
                  ];
                },
              ),
            ],
          );
        },
      ),
    ];
  }
}
