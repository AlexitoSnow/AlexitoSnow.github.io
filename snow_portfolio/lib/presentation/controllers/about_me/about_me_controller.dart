import 'package:get/get.dart';
import '../../../generated/translations.g.dart';

class AboutMeController extends GetxController {

  final name = 'Geovanny Alexander\nNieves Reyes';
  final softwareTechnologies = [
    'dart',
    'java',
    'python',
    'flutter',
    'springboot',
    'mysql',
    'postgresql',
    'sql server',
    'git',
  ];

  String get presentation => texts.about.presentation;

  String get title => texts.about.title;

  String get gretting => texts.about.gretting;

}
