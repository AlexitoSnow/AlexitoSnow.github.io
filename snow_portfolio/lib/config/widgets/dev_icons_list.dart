import 'package:dev_icons/dev_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DevIconsList extends StatelessWidget {
  const DevIconsList({
    super.key,
    required this.iconList,
  });

  final List<String> iconList;

  @override
  Widget build(BuildContext context) {
    final isPhone = context.width <= 800;
    return Wrap(
      children: List.generate(
        iconList.length,
        (index) => Tooltip(
          message: iconList[index],
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
            child: CircleAvatar(
              maxRadius: isPhone ? 15 : 25,
              child: Icon(
                tecnologiesMap[iconList[index]],
                size: isPhone ? 15 : 35,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

const Map<String, IconData> tecnologiesMap = {
  'java': DevIcons.javaPlain,
  'flutter': DevIcons.flutterPlain,
  'springboot': DevIcons.springPlain,
  'mysql': DevIcons.mysqlPlain,
  'python': DevIcons.pythonPlain,
  'dart': DevIcons.dartPlain,
  'postgresql': DevIcons.postgresqlPlain,
  'git': DevIcons.gitPlain,
  'sql server': DevIcons.microsoftsqlserverPlain,
};
