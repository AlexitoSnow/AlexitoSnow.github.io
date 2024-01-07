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

  static List<Project> projects = [
    Project(
      title: 'SnowNotepad',
      description:
          'Un bloc de notas móvil desarrollado en Flutter, utilizando SQLite para la administración de las notas del usuario directamente en su dispositivo y sin conexión a internet.',
      image: '$imagePath/snownotepad_project.jpg',
      repository: '$github/SnowNotepad',
      technologies: ['flutter', 'dart'],
    ),
    Project(
      title: 'CrimeBuster',
      description:
          'App para proyecto de detección de crímenes en el concurso IOT&AI Latinoamérica 2023, encargado del diseño de la interfaz gráfica.',
      image: '$imagePath/crimebuster_project.jpg',
      repository: '$github/CrimeBuster-IoTEngine',
      technologies: ['flutter', 'dart'],
    ),
    Project(
      title: 'Proyecto Polaris',
      description:
          'Página web que consiste en educar a los internautas sobre los planetas, y una interfaz que permita emular un itinerario de viajes, proyecto para la competencia NASA Space Apps 2023',
      image: '$imagePath/polaris_project.png',
      repository: '$github/proyect_polaris',
      technologies: ['flutter', 'dart'],
    ),
    Project(
      title: 'Notepad: Web App',
      description:
          'Un bloc de notas web desarrollado en Flutter, hace peticiones a una API personal para implementar todos los métodos CRUD hacia una base de datos MySQL.',
      image: '$imagePath/notepad_web_project.jpg',
      repository: '$github/notepad_web_app',
      technologies: ['flutter', 'dart'],
    ),
    Project(
      title: 'Notepad: API Rest',
      description:
          'Una API desarrollada en Java Springboot para comunicar la web del bloc de notas con una base de datos MySQL.',
      image: '$imagePath/notepad_api_project.png',
      repository: '$github/notepad_api',
      technologies: ['java', 'springboot', 'mysql'],
    ),
    Project(
      title: 'Chasing 30',
      description:
          'Juego por consola de un tablero que recorre la computadora para buscar el número 30 mientras el tablero se desordena cada cierto tiempo, diseñado como desafío para la competencia PyWeekend ESPOL 2023.',
      image: '$imagePath/chasing30_project.png',
      repository: '$github/PyWeekend-ESPOL',
      technologies: ['python'],
    ),
    Project(
      title: 'Snake Game: Computer Society ESPOL Edition',
      description:
          'Líder de proyecto colaborativo del clásico juego Snake, adaptado y personalizado al ambiente de la ESPOL, para su exposición en el aniversario de la rama estudiantil IEEE ESPOL 2023.',
      image: '$imagePath/snake_project.jpeg',
      repository: '$github/proyecto-aniversarioIEEE-Snake',
      technologies: ['java'],
    ),
  ];
}

const String github = 'https://www.github.com/AlexitoSnow';
const String imagePath = 'assets/images/projects';
