import 'package:bloc/bloc.dart';

import '../../../generated/translations.g.dart';

part 'about_me_state.dart';

class AboutMeCubit extends Cubit<AboutMeState> {
  AboutMeCubit() : super(AboutMeState());

  

  final name = 'Geovanny Alexander\nNieves Reyes';

  String get presentation => texts.about.presentation;

  String get title => texts.about.title;

  String get gretting => texts.about.gretting;
}
