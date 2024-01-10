import 'package:get/get.dart';
import '../../../../generated/translations.g.dart';
import '../../../models/extracurricular_model.dart';
import '../../../utils/constants.dart';

class ExtracurricularController extends GetxController {
  get _extra => texts.extracurricular;

  List<Extracurricular> get extracurricularList => [
        Extracurricular(
          name: _extra.act1.name,
          institution: _extra.act1.institution,
          date: _extra.act1.date(
            startDate: dateFormatter(DateTime(2023, 7, 8)),
            endDate: dateFormatter(DateTime(2024, 7, 9)),
          ),
          description: _extra.act1.description,
        ),
        Extracurricular(
          name: _extra.act2.name,
          institution: _extra.act2.institution,
          date: _extra.act2.date(
            startDate: dateFormatter(DateTime(2023, 10, 7)),
            endDate: dateFormatter(DateTime(2023, 10, 8)),
          ),
          description: _extra.act2.description,
        ),
        Extracurricular(
          name: _extra.act3.name,
          institution: _extra.act3.institution,
          date: _extra.act3.date(
            startDate: dateFormatter(DateTime(2023, 8, 1)),
            endDate: dateFormatter(DateTime(2023, 10, 20)),
          ),
          description: _extra.act3.description,
        ),
      ];
}
