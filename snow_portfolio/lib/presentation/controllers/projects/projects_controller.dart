import 'package:get/get.dart';

import '../../../generated/translations.g.dart';
import '../../../domain/models/project_model.dart';

class ProjectsController extends GetxController {
  List<Project> get projectItems => [
    Project(
      title: texts.project.snowNotepad.title,
      description: texts.project.snowNotepad.description,
      image: texts.project.snowNotepad.image(imagePath: '$imagePath/snownotepad_project.jpg'),
      repository: texts.project.snowNotepad.repository(repository: '$github/SnowNotepad'),
      technologies: texts.project.snowNotepad.technologies,
    ),
    Project(
      title: texts.project.crimeBuster.title,
      description: texts.project.crimeBuster.description,
      image: texts.project.crimeBuster.image(imagePath: '$imagePath/crimebuster_project.jpg'),
      repository: texts.project.crimeBuster.repository(repository: '$github/CrimeBuster-IoTEngine'),
      technologies: texts.project.crimeBuster.technologies,
    ),
    Project(
      title: texts.project.polaris.title,
      description: texts.project.polaris.description,
      image: texts.project.polaris.image(imagePath: '$imagePath/polaris_project.png'),
      repository: texts.project.polaris.repository(repository: '$github/proyect_polaris'),
      technologies: texts.project.polaris.technologies,
    ),
    Project(
      title: texts.project.notepadWeb.title,
      description: texts.project.notepadWeb.description,
      image: texts.project.notepadWeb.image(imagePath: '$imagePath/notepad_web_project.jpg'),
      repository: texts.project.notepadWeb.repository(repository: '$github/notepad_web_app'),
      technologies: texts.project.notepadWeb.technologies,
    ),
    Project(
      title: texts.project.notepadAPI.title,
      description: texts.project.notepadAPI.description,
      image: texts.project.notepadAPI.image(imagePath: '$imagePath/notepad_api_project.png'),
      repository: texts.project.notepadAPI.repository(repository: '$github/notepad_api'),
      technologies: texts.project.notepadAPI.technologies,
    ),
    Project(
      title: texts.project.chasing30.title,
      description: texts.project.chasing30.description,
      image: texts.project.chasing30.image(imagePath: '$imagePath/chasing30_project.png'),
      repository: texts.project.chasing30.repository(repository: '$github/PyWeekend-ESPOL'),
      technologies: texts.project.chasing30.technologies,
    ),
    Project(
      title: texts.project.snakeGame.title,
      description: texts.project.snakeGame.description,
      image: texts.project.snakeGame.image(imagePath: '$imagePath/snake_project.jpeg'),
      repository: texts.project.snakeGame.repository(repository: '$github/proyecto-aniversarioIEEE-Snake'),
      technologies: texts.project.snakeGame.technologies,
    ),
  ];

  List<String> get projectNames =>
      projectItems.map((e) => e.title ?? '').toList();

  List<String> get projectDescriptions =>
      projectItems.map((e) => e.description ?? '').toList();

  List<String> get projectImages =>
      projectItems.map((e) => e.image ?? '').toList();
}
