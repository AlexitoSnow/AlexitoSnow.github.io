import 'package:get/get.dart';
import '../../../../generated/translations.g.dart';
import '../../../models/volunteering_model.dart';
import '../../../utils/constants.dart';

class VolunteeringController extends GetxController {
  get vol => texts.volunteering;

  List<Volunteering> get volunteeringList => [
        Volunteering(
          name: vol.vol1.name,
          description: vol.vol1.description,
          date: vol.vol1.date(
            startDate: dateFormatter(
              DateTime(2023, 1, 1),
            ),
            endDate: dateFormatter(
              DateTime(2024, 1, 1),
            ),
          ),
          institution: vol.vol1.institution,
        ),
        Volunteering(
          name: vol.vol2.name,
          description: vol.vol2.description,
          date: vol.vol1.date(
            startDate: dateFormatter(
              DateTime(2023, 8, 1),
            ),
            endDate: dateFormatter(
              DateTime(2023, 8, 30),
            ),
          ),
          institution: vol.vol2.institution,
        ),
        Volunteering(
          name: vol.vol3.name,
          description: vol.vol3.description,
          date: vol.vol1.date(
            startDate: dateFormatter(
              DateTime(2023, 8, 5),
            ),
            endDate: dateFormatter(
              DateTime(2023, 8, 5),
            ),
          ),
          institution: vol.vol3.institution,
        ),
        Volunteering(
          name: vol.vol4.name,
          description: vol.vol4.description,
          date: vol.vol1.date(
            startDate: dateFormatter(
              DateTime(2023, 12, 1),
            ),
            endDate: dateFormatter(
              DateTime(2023, 12, 2),
            ),
          ),
          institution: vol.vol4.institution,
        ),
      ];
}
