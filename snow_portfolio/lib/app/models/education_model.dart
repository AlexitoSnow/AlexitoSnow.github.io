import 'activity_model.dart';

class Education extends Activity {
  Education({
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

  static List<Education> education = [
    Education(
      name: 'Ingeniería en Computación',
      institution: 'ESPOL',
      startDate: DateTime(2022, 5, 1),
      endDate: DateTime.now(),
      description: '4to Semestre',
    ),
    Education(
      name: 'Ingeniería de Datos',
      institution: 'Sociedad Ecuatoriana de Estadística',
      startDate: DateTime(2023, 5, 1),
      endDate: DateTime(2023, 9, 1),
      description: '''
Arquitectura de datos
Modelamiento y diseño de datos
Procesamiento Analítico
Calidad de los datos
Procesamiento de Big Data en Apache Spark
Data Pipelines con Apache Airflow
''',
    ),
  ];

  static List<String> languages = ['Español', 'Inglés'];

  static List<String> softSkills = [
    'Trabajo en equipo',
    'Liderazgo',
    'Adaptabilidad',
    'Resolución de problemas',
    'Pensamiento crítico',
    'Empatía',
    'Gestión de proyectos',
    'Orientado a resultados',
  ];
}
