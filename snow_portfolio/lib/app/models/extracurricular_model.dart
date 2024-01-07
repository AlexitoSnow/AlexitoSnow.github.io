import 'activity_model.dart';

class Extracurricular extends Activity {
  Extracurricular({
    String? name,
    String? institution,
    DateTime? startDate,
    DateTime? endDate,
    String? description,
  }) : super(
          name: name,
          institution: institution,
          startDate: startDate,
          endDate: endDate,
          description: description,
        );

  static List<Extracurricular> extracurricular = [
    Extracurricular(
      name: '<El_Hackathon> Vol. I',
      institution: 'Guayaquil Tech',
      startDate: DateTime(2023, 7, 8),
      endDate: DateTime(2024, 7, 9),
      description:
          'Participación en la competencia de programación en un desafío propuesto por la empresa Publifyer, contribuyendo al desarrollo de la API de nuestro proyecto, misma que consumía los servicios de OpenAI.',
    ),
    Extracurricular(
      name: 'NASA Space Apps Challenge Guayaquil 2023',
      institution: 'CORPCITI',
      startDate: DateTime(2023, 10, 7),
      endDate: DateTime(2023, 10, 8),
      description:
          'Líder y participante en la competencia de programación local Space Apps en el desafío “Planetary Tourism Office”, diseñando la interfaz frontend.',
    ),
    Extracurricular(
      name: 'Concurso IOT&AI Latinoamérica 2023',
      institution: 'IEEE TEMS',
      startDate: DateTime(2023, 8, 1),
      endDate: DateTime(2023, 10, 20),
      description:
          'Diseño de la interfaz frontend para el proyecto “CrimeBuster”, el cual consiste en un sistema de detección de crímenes en tiempo real, utilizando inteligencia artificial y aprendizaje automático.',
    ),
  ];
}
