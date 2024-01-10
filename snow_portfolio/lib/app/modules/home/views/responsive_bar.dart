import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snow_portfolio/app/modules/home/controllers/home_controller.dart';

class ResponsiveBar extends GetView<HomeController> {
  final bool isPhone;

  Widget get _showTopBar {
    return Obx(
      () => NavigationBar(
        backgroundColor: Colors.transparent,
        labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
        indicatorColor: Colors.transparent,
        destinations: controller.titles
            .map(
              (name) => NavigationDestination(
                icon: Text(name),
                label: name,
              ),
            )
            .toList(),
        selectedIndex: controller.currentPage,
        onDestinationSelected: (index) async {
          await controller.changePage(index);
        },
      ),
    );
  }

  Widget get _showLeftBar {
    return Drawer(
      width: 150,
      child: Obx(
        () => NavigationRail(
          labelType: NavigationRailLabelType.all,
          selectedIndex: controller.currentPage,
          onDestinationSelected: (index) async {
            await controller.changePage(index);
            Get.back();
          },
          destinations: controller.titles
              .map(
                (name) => NavigationRailDestination(
                  icon: controller.icons[controller.titles.indexOf(name)],
                  label: Text(name),
                ),
              )
              .toList(),
        ),
      ),
    );
  }

  const ResponsiveBar(
    this.isPhone, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (isPhone) {
      return _showLeftBar;
    }
    return _showTopBar;
  }
}
