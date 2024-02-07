import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snow_portfolio/config/config.dart';
import 'package:snow_portfolio/presentation/bloc/bloc.dart';

class ResponsiveBar extends StatelessWidget {
  final bool isPhone;

  Widget get _showTopBar {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final controller = context.watch<HomeCubit>();
        return Row(
          children: List.generate(
            controller.pages.length,
            (index) => InkWell(
              onTap: () => controller.changePage(index),
              child: AnimatedContainer(
                duration: const Duration(seconds: 1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: controller.state.currentPage == index
                      ? mainColor
                      : Colors.transparent,
                ),
                child: Text(controller.pages[index].title)
                    .paddingSymmetric(horizontal: 20),
              ),
            ),
          ),
        );
      },
    );
  }

  Widget get _showDrawer {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        final controller = context.watch<HomeCubit>();
        return NavigationDrawer(
          onDestinationSelected: (int index) {
            controller.changePage(index);
          },
          selectedIndex: controller.state.currentPage,
          children: [
            const Align(
              alignment: Alignment.centerRight,
              child: CloseButton(),
            ),
            for (var i = 0; i < controller.pages.length; i++)
              NavigationDrawerDestination(
                label: Text(controller.pages[i].title),
                icon: const Icon(Icons.arrow_forward_ios_rounded),
                selectedIcon: const Icon(Icons.arrow_forward_ios_rounded,
                    color: mainColor),
              ),
          ],
        );
      },
    );
  }

  const ResponsiveBar(
    this.isPhone, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return isPhone ? _showDrawer : _showTopBar;
  }
}
