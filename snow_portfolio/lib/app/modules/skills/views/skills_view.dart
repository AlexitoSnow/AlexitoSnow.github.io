import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:snow_portfolio/app/utils/constants.dart';

import '../../../widgets/activity_list.dart';
import '../../../widgets/responsive_flex.dart';
import '../controllers/skills_controller.dart';

class SkillsView extends GetView<SkillsController> {
  const SkillsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    isPhone = context.width <= 800;
    return Stack(
      children: [
        background,
        ResponsiveFlex(
          children: [
            education,
            Expanded(
              flex: 4,
              child: ListView(
                children: [
                  sectionOf(
                    controller.softSkillsHeader,
                    FontAwesomeIcons.lightbulb,
                    controller.softSkills,
                  ),
                  sectionOf(
                    controller.languagesHeader,
                    FontAwesomeIcons.language,
                    controller.languages,
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }

  ExpansionTile sectionOf(String title, IconData icon, List<String> list) {
    return ExpansionTile(
      initiallyExpanded: !isPhone,
      title: Text(title),
      trailing: Icon(icon),
      children: [
        for (final item in list)
          ListTile(
            title: Text(item),
          ),
      ],
    );
  }

  Expanded get education {
    return Expanded(
      flex: 6,
      child: Column(
        children: [
          ListTile(
            title: Text(
              controller.educationHeader,
            ),
            trailing: const Icon(FontAwesomeIcons.graduationCap),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ActivityList(controller.education),
            ),
          ),
        ],
      ),
    );
  }

  SizedBox get background {
    return SizedBox.expand(
      child: LottieBuilder.network(
        'https://lottie.host/5401a029-9aa7-48cd-b061-b8e12e5f21db/S9r2Z6rHnk.json',
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
