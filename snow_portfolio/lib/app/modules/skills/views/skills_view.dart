import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../widgets/activity_list.dart';
import '../controllers/skills_controller.dart';

class SkillsView extends GetView<SkillsController> {
  const SkillsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        background,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            education,
            Expanded(
              flex: 4,
              child: ListView(
                children: [
                  Gap(Get.height * 0.05),
                  sectionOf(
                    'Soft Skills',
                    FontAwesomeIcons.lightbulb,
                    controller.softSkills,
                  ),
                  sectionOf(
                    'Languages',
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
      initiallyExpanded: true,
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
          Gap(Get.height * 0.1),
          const ListTile(
            title: Text(
              'Education',
            ),
            trailing: Icon(FontAwesomeIcons.graduationCap),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: ActivityList(controller.educationList),
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
