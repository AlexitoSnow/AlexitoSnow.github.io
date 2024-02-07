import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../config/config.dart';
import '../../../domain/models.dart';

class ProjectCard extends StatelessWidget {
  final Project projectModel;
  const ProjectCard({super.key, required this.projectModel});

  @override
  Widget build(BuildContext context) {
    isPhone = context.width <= 800;
    return Column(
      children: [
        infoSection(),
        Expanded(
          child: Image.asset(
            projectModel.image!,
            fit: BoxFit.contain,
          ),
        ),
      ],
    );
  }

  Column infoSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        project(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            DevIconsList(iconList: projectModel.technologies!),
            github(),
          ],
        ),
      ],
    );
  }

  Widget project() {
    return Column(
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
    ).paddingOnly(left: 8.0);
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
