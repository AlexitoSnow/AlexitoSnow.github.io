import 'activity_model.dart';

class Volunteering extends Activity {
  Volunteering({
    String? name,
    String? institution,
    String? date,
    String? description,
  }) : super(
          name: name,
          institution: institution,
          date: date,
          description: description,
        );
}
