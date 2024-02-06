import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../config/config.dart';
import '../../controllers/controllers.dart';

class SkillsView extends GetView<SkillsController> {
  const SkillsView({super.key});
  @override
  Widget build(BuildContext context) {
    isPhone = context.width <= 800;
    return Stack(
      children: [
        background(context.height),
        ResponsiveFlex(
          children: [
            education,
            Expanded(
              flex: 4,
              child: SizedBox(
                height: Get.height,
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
      child: SizedBox(
        height: Get.height,
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
      ),
    );
  }

  SizedBox background(double height) {
    return SizedBox(
      height: height,
      child: LottieBuilder.network(
        'https://lottie.host/5401a029-9aa7-48cd-b061-b8e12e5f21db/S9r2Z6rHnk.json',
        fit: BoxFit.fitHeight,
      ),
    );
  }
}
