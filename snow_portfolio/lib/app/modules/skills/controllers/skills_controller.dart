import 'package:get/get.dart';
import '../../../../generated/translations.g.dart';
import '../../../models/education_model.dart';
import '../../../utils/constants.dart';

class SkillsController extends GetxController {
  get headers => texts.skills.headers;

  get university => texts.skills.education.university;

  get course => texts.skills.education.course;

  get languages => texts.skills.languages;

  get softSkills => texts.skills.softskills;

  String get educationHeader => headers.education;

  String get softSkillsHeader => headers.softskills;

  String get languagesHeader => headers.languages;

  List<Education> get education => [
        Education(
          name: university.name,
          institution: university.institution,
          date: university.date(
            startDate: dateFormatter(DateTime(2022, 5, 1)),
          ),
          description: university.description,
        ),
        Education(
          name: course.name,
          institution: course.institution,
          date: course.date(
            startDate: dateFormatter(DateTime(2023, 5, 1)),
            endDate: dateFormatter(DateTime(2023, 9, 1)),
          ),
          description: course.description,
        ),
      ];
}
