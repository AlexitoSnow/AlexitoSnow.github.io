import 'package:dev_icons/dev_icons.dart';
import 'package:flutter/material.dart';

class DevIconsList extends StatelessWidget {
  const DevIconsList({
    super.key,
    required this.iconList,
  });

  final List<String> iconList;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        iconList.length,
        (index) => Tooltip(
          message: iconList[index],
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: CircleAvatar(
              maxRadius: 25,
              child: Icon(
                tecnologiesMap[iconList[index]],
                size: 35,
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
