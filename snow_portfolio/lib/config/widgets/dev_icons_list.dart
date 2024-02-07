import 'package:dev_icons/dev_icons.dart';
import 'package:flutter/material.dart';
import 'package:snow_portfolio/config/config.dart';

class DevIconsList extends StatelessWidget {
  const DevIconsList({
    super.key,
    required this.iconList, this.radius,
  });

  final List<String> iconList;
  final double? radius;

  @override
  Widget build(BuildContext context) {
    final isPhone = context.width <= 800;
    return Wrap(
      children: List.generate(
        iconList.length,
        (index) => Tooltip(
          message: iconList[index],
          decoration: BoxDecoration(
            color: mainColor.withOpacity(0.8),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: CircleAvatar(
            maxRadius: radius ?? (isPhone ? 18 : 25),
            child: Icon(
              technologiesMap[iconList[index]],
              size: radius ?? (isPhone ? 18 : 35),
            ),
          ).paddingSymmetric(horizontal: 8.0, vertical: 4.0),
        ),
      ),
    );
  }
}

const Map<String, IconData> technologiesMap = {
  'java': DevIcons.javaPlain,
  'flutter': DevIcons.flutterPlain,
  'springboot': DevIcons.springPlain,
  'mysql': DevIcons.mysqlPlain,
  'python': DevIcons.pythonPlain,
  'dart': DevIcons.dartPlain,
  'postgresql': DevIcons.postgresqlPlain,
  'git': DevIcons.gitPlain,
  'sql server': DevIcons.microsoftsqlserverPlain,
  'github': DevIcons.githubOriginal,
  'firebase': DevIcons.firebasePlain,
  'visual studio code': DevIcons.visualstudioPlain,
};
