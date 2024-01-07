import 'package:get/get.dart';

import '../../../models/project_model.dart';

class ProjectsController extends GetxController {
  final List<Project> projectItems = Project.projects;

  List<String> get projectNames =>
      projectItems.map((e) => e.title ?? '').toList();

  List<String> get projectDescriptions =>
      projectItems.map((e) => e.description ?? '').toList();

  List<String> get projectImages =>
      projectItems.map((e) => e.image ?? '').toList();
}
