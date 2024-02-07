import '../../generated/translations.g.dart';

class Project {
  String? title;
  String? description;
  String? image;
  String? repository;
  List<String>? technologies;

  Project(
      {this.title,
      this.description,
      this.image,
      this.repository,
      this.technologies});

  Project.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    image = json['image'];
    repository = json['repository'];
    technologies = json['technologies'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['title'] = title;
    data['description'] = description;
    data['image'] = image;
    data['repository'] = repository;
    data['technologies'] = technologies;
    return data;
  }

  static List<Project> get projectItems => [
        Project(
          title: texts.project.snowNotepad.title,
          description: texts.project.snowNotepad.description,
          image: texts.project.snowNotepad
              .image(imagePath: '$imagePath/snownotepad_project.jpg'),
          repository: texts.project.snowNotepad
              .repository(repository: '$github/SnowNotepad'),
          technologies: texts.project.snowNotepad.technologies,
        ),
        Project(
          title: texts.project.crimeBuster.title,
          description: texts.project.crimeBuster.description,
          image: texts.project.crimeBuster
              .image(imagePath: '$imagePath/crimebuster_project.jpg'),
          repository: texts.project.crimeBuster
              .repository(repository: '$github/CrimeBuster-IoTEngine'),
          technologies: texts.project.crimeBuster.technologies,
        ),
        Project(
          title: texts.project.polaris.title,
          description: texts.project.polaris.description,
          image: texts.project.polaris
              .image(imagePath: '$imagePath/polaris_project.png'),
          repository: texts.project.polaris
              .repository(repository: '$github/proyect_polaris'),
          technologies: texts.project.polaris.technologies,
        ),
        Project(
          title: texts.project.notepadWeb.title,
          description: texts.project.notepadWeb.description,
          image: texts.project.notepadWeb
              .image(imagePath: '$imagePath/notepad_web_project.jpg'),
          repository: texts.project.notepadWeb
              .repository(repository: '$github/notepad_web_app'),
          technologies: texts.project.notepadWeb.technologies,
        ),
        Project(
          title: texts.project.notepadAPI.title,
          description: texts.project.notepadAPI.description,
          image: texts.project.notepadAPI
              .image(imagePath: '$imagePath/notepad_api_project.png'),
          repository: texts.project.notepadAPI
              .repository(repository: '$github/notepad_api'),
          technologies: texts.project.notepadAPI.technologies,
        ),
        Project(
          title: texts.project.chasing30.title,
          description: texts.project.chasing30.description,
          image: texts.project.chasing30
              .image(imagePath: '$imagePath/chasing30_project.png'),
          repository: texts.project.chasing30
              .repository(repository: '$github/PyWeekend-ESPOL'),
          technologies: texts.project.chasing30.technologies,
        ),
        Project(
          title: texts.project.snakeGame.title,
          description: texts.project.snakeGame.description,
          image: texts.project.snakeGame
              .image(imagePath: '$imagePath/snake_project.jpeg'),
          repository: texts.project.snakeGame
              .repository(repository: '$github/proyecto-aniversarioIEEE-Snake'),
          technologies: texts.project.snakeGame.technologies,
        ),
      ];
}

const String github = 'https://www.github.com/AlexitoSnow';
const String imagePath = 'assets/images/projects';
