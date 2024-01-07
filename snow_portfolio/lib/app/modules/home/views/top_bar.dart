import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snow_portfolio/app/modules/home/controllers/home_controller.dart';

class TopBar extends GetView<HomeController> {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TabBar(
      isScrollable: true,
      physics: const BouncingScrollPhysics(),
      indicatorSize: TabBarIndicatorSize.tab,
      indicator: BoxDecoration(
        color: Get.theme.colorScheme.secondary,
      ),
      dividerColor: Colors.transparent,
      labelColor: Colors.white,
      unselectedLabelColor: Colors.white.withOpacity(0.5),
      labelStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20,
      ),
      unselectedLabelStyle: const TextStyle(
        fontSize: 20,
      ),
      onTap: (index) async {
        await controller.changePage(index);
      },
      controller: controller.tabController,
      tabs: controller.pageNames.map((name) => Tab(text: name)).toList(),
    );
  }
}
