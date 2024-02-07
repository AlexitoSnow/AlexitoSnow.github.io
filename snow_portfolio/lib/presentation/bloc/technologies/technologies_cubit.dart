import 'package:bloc/bloc.dart';
import 'package:snow_portfolio/generated/translations.g.dart';

part 'technologies_state.dart';

class TechnologiesCubit extends Cubit<TechnologiesState> {
  TechnologiesCubit() : super(TechnologiesState());

  String get languagesText => texts.technologies.languages;

  String get frameworksText => texts.technologies.frameworks;

  String get databasesText => texts.technologies.databases;

  String get toolsText => texts.technologies.tools;

  final languages = [
    'dart',
    'java',
    'python',
  ];

  final databases = [
    'mysql',
    'postgresql',
    'sql server',
    'firebase',
  ];

  final frameworks = [
    'flutter',
    'springboot',
  ];

  final tools = [
    'git',
    'github',
    'visual studio code',
  ];
}
