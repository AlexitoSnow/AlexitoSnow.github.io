import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snow_portfolio/presentation/controllers/home/home_controller.dart';

class ResponsiveBar extends GetView<HomeController> {
  final bool isPhone;

  Widget get _showTopBar {
    return Row(
        children: List.generate(
      controller.titles.length,
      (index) => Obx(
        () => InkWell(
          onTap: () => controller.changePage(index),
          child: Text(
            controller.titles[index],
            style: TextStyle(
                decoration: controller.currentPage == index
                    ? TextDecoration.underline
                    : null),
          ).paddingSymmetric(horizontal: 20),
        ),
      ),
    ));
  }

  Widget get _showDrawer {
    return Obx(
      () => NavigationDrawer(
        onDestinationSelected: (int index) {
          controller.changePage(index);
        },
        selectedIndex: controller.currentPage,
        children: [
          const Align(
            alignment: Alignment.centerRight,
            child: CloseButton(),
          ),
          for (var i = 0; i < controller.titles.length; i++)
            NavigationDrawerDestination(
              label: Text(controller.titles[i]),
              icon: controller.icons[i],
            ),
        ],
      ),
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
