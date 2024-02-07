import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snow_portfolio/config/config.dart';
import '../../bloc/bloc.dart';
import 'project_page.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = context.watch<ProjectsCubit>();
    return Column(
      children: [
        Scrollbar(
          controller: controller.scrollController,
          child: SizedBox(
            height: context.width * 0.1,
            width: context.width,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              controller: controller.scrollController,
              children: List.generate(
                controller.projectItems.length,
                (index) {
                  return InkWell(
                    onTap: () {
                      controller.pageController.animateToPage(
                        index,
                        duration: const Duration(seconds: 1),
                        curve: Curves.easeInOutCubicEmphasized,
                      );
                      controller.onPageChanged(index);
                    },
                    onHover: (isHovering) {
                      controller.onHover(index, isHovering);
                    },
                    child: Stack(
                      children: [
                        AnimatedContainer(
                          duration: const Duration(seconds: 1),
                          curve: Curves.easeInOutCubicEmphasized,
                          width: context.width *
                              (controller.state.currentPage == index
                                  ? 0.2
                                  : 0.1),
                          height: context.width * 0.1,
                          child: Image.asset(
                            controller.projectItems[index].image!,
                            fit: BoxFit.cover,
                          ),
                        ).paddingSymmetric(horizontal: 10),
                        Visibility(
                          visible: controller.state.currentPage == index
                              ? true
                              : controller.state.hoveringIndex == index,
                          child: Container(
                            width: context.width *
                                (controller.state.currentPage == index
                                    ? 0.2
                                    : 0.1),
                            height: context.width * 0.1,
                            color: (controller.state.currentPage == index
                                    ? mainColor
                                    : Colors.black)
                                .withOpacity(0.5),
                            child: Text(controller.projectItems[index].title!)
                                .center(),
                          ).paddingSymmetric(horizontal: 10),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        SizedBox(
          height: context.height,
          child: PageView.builder(
            controller: controller.pageController,
            itemCount: controller.projectItems.length,
            itemBuilder: (context, index) {
              return ProjectCard(
                projectModel: controller.projectItems[index],
              );
            },
          ),
        ).marginSymmetric(horizontal: 15),
      ],
    );
  }
}
