import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../models/project_model.dart';
import '../../../widgets/dev_icons_list.dart';
import 'project_image_view.dart';


class ProjectCard extends GetView {
  final double rotationAngle;
  final Project projectModel;
  const ProjectCard(
      {super.key, required this.rotationAngle, required this.projectModel});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      shadowColor: Get.theme.colorScheme.primary.withOpacity(0.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            flex: 4,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 9,
                  child: project(),
                ),
                DevIconsList(iconList: projectModel.technologies!),
                github(),
              ],
            ),
          ),
          ProjectImageView(
              rotationAngle: rotationAngle, imagePath: projectModel.image!,),
        ],
      ),
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
            minFontSize: 25,
            maxFontSize: 30,
            maxLines: 5,
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
