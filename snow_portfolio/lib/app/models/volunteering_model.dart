import 'activity_model.dart';

class Volunteering extends Activity {
  Volunteering({
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

  static List<Volunteering> volunteering = [
    Volunteering(
      name: 'Vicepresident',
      institution: 'Computer Society IEEE ESPOL',
      startDate: DateTime(2023, 1, 1),
      endDate: DateTime(2024, 1, 1),
      description: 'Dirección de proyectos, comunicación con estudiantes.',
    ),
    Volunteering(
      name: 'Collaborator in the 12th edition of PyWeekend 2023',
      institution: 'ESPOL',
      startDate: DateTime(2023, 8, 1),
      endDate: DateTime(2023, 8, 30),
      description:
          'Contribuí en la elaboración del desafío de la semifinal de la competencia de programación en Python. Además, ayudé a orientar a los participantes el día de la competencia.',
    ),
    Volunteering(
      name: 'Guide on Django Girls',
      institution: 'Open Lab',
      startDate: DateTime(2023, 8, 5),
      endDate: DateTime(2023, 8, 5),
      description:
          'Contribuí a que las participantes puedan desarrollar, satisfactoriamente, el tutorial introductorio a Django.',
    ),
    Volunteering(
      name: 'Collaborator in the 2nd edition of PyTime IoT',
      institution: 'Niot ESPOL',
      startDate: DateTime(2023, 12, 1),
      endDate: DateTime(2023, 12, 2),
      description:
          'Dar soporte a los estudiantes en temas relacionados al lenguaje de programación Python y resolver sus inquietudes durante su proceso de aprendizaje.',
    ),
  ];
}
