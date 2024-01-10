import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../models/project_model.dart';
import '../../../utils/constants.dart';
import '../../../widgets/dev_icons_list.dart';
import '../../../widgets/responsive_flex.dart';
import 'project_image_view.dart';

class ProjectCard extends GetView {
  final double rotationAngle;
  final Project projectModel;
  const ProjectCard(
      {super.key, required this.rotationAngle, required this.projectModel});

  @override
  Widget build(BuildContext context) {
    isPhone = context.width <= 800;
    return Card(
      elevation: 3,
      shadowColor: Get.theme.colorScheme.primary.withOpacity(0.5),
      child: SingleChildScrollView(
        child: ResponsiveFlex(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            isPhone
                ? infoSection()
                : Expanded(
                    flex: 4,
                    child: infoSection(),
                  ),
            ProjectImageView(
              rotationAngle: rotationAngle,
              imagePath: projectModel.image!,
            ),
          ],
        ),
      ),
    );
  }

  Column infoSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        project(),
        DevIconsList(iconList: projectModel.technologies!),
        github(),
      ],
    );
  }

  Padding project() {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0),
      child: Column(
        children: [
          Text(
            projectModel.title!,
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          AutoSizeText(
            projectModel.description!,
            minFontSize: isPhone ? 15 : 20,
            maxFontSize: 30,
            maxLines: null,
          ),
        ],
      ),
    );
  }

  TextButton github() {
    return TextButton.icon(
      onPressed: () async {
        await launchUrl(Uri.parse(projectModel.repository!));
      },
      icon: const FaIcon(FontAwesomeIcons.github),
      label: Text(
        projectModel.repository!
            .substring(projectModel.repository!.lastIndexOf('/') + 1),
      ),
    );
  }
}
