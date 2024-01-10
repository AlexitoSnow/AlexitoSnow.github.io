/// Generated file. Do not edit.
///
/// Original: i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 196 (98 per locale)
///
/// Built on 2024-01-10 at 00:17 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.es;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.es) // set locale
/// - Locale locale = AppLocale.es.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.es) // locale check
enum AppLocale with BaseAppLocale<AppLocale, Translations> {
	es(languageCode: 'es', build: Translations.build),
	en(languageCode: 'en', build: _TranslationsEn.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, Translations> build;

	/// Gets current instance managed by [LocaleSettings].
	Translations get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of texts).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = texts.someKey.anotherKey;
/// String b = texts['someKey.anotherKey']; // Only for edge cases!
Translations get texts => LocaleSettings.instance.currentTranslations;

/// Method B: Advanced
///
/// All widgets using this method will trigger a rebuild when locale changes.
/// Use this if you have e.g. a settings page where the user can select the locale during runtime.
///
/// Step 1:
/// wrap your App with
/// TranslationProvider(
/// 	child: MyApp()
/// );
///
/// Step 2:
/// final texts = Translations.of(context); // Get texts variable.
/// String a = texts.someKey.anotherKey; // Use texts variable.
/// String b = texts['someKey.anotherKey']; // Only for edge cases!
class TranslationProvider extends BaseTranslationProvider<AppLocale, Translations> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, Translations> of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.texts.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	Translations get texts => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, Translations> {
	LocaleSettings._() : super(utils: AppLocaleUtils.instance);

	static final instance = LocaleSettings._();

	// static aliases (checkout base methods for documentation)
	static AppLocale get currentLocale => instance.currentLocale;
	static Stream<AppLocale> getLocaleStream() => instance.getLocaleStream();
	static AppLocale setLocale(AppLocale locale, {bool? listenToDeviceLocale = false}) => instance.setLocale(locale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale setLocaleRaw(String rawLocale, {bool? listenToDeviceLocale = false}) => instance.setLocaleRaw(rawLocale, listenToDeviceLocale: listenToDeviceLocale);
	static AppLocale useDeviceLocale() => instance.useDeviceLocale();
	@Deprecated('Use [AppLocaleUtils.supportedLocales]') static List<Locale> get supportedLocales => instance.supportedLocales;
	@Deprecated('Use [AppLocaleUtils.supportedLocalesRaw]') static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
	static void setPluralResolver({String? language, AppLocale? locale, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver}) => instance.setPluralResolver(
		language: language,
		locale: locale,
		cardinalResolver: cardinalResolver,
		ordinalResolver: ordinalResolver,
	);
}

/// Provides utility functions without any side effects.
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, Translations> {
	AppLocaleUtils._() : super(baseLocale: _baseLocale, locales: AppLocale.values);

	static final instance = AppLocaleUtils._();

	// static aliases (checkout base methods for documentation)
	static AppLocale parse(String rawLocale) => instance.parse(rawLocale);
	static AppLocale parseLocaleParts({required String languageCode, String? scriptCode, String? countryCode}) => instance.parseLocaleParts(languageCode: languageCode, scriptCode: scriptCode, countryCode: countryCode);
	static AppLocale findDeviceLocale() => instance.findDeviceLocale();
	static List<Locale> get supportedLocales => instance.supportedLocales;
	static List<String> get supportedLocalesRaw => instance.supportedLocalesRaw;
}

// translations

// Path: <root>
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final texts = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.es,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <es>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final _TranslationsAboutEs about = _TranslationsAboutEs._(_root);
	late final _TranslationsExtracurricularEs extracurricular = _TranslationsExtracurricularEs._(_root);
	late final _TranslationsProjectEs project = _TranslationsProjectEs._(_root);
	late final _TranslationsSkillsEs skills = _TranslationsSkillsEs._(_root);
	late final _TranslationsTabsEs tabs = _TranslationsTabsEs._(_root);
	late final _TranslationsVolunteeringEs volunteering = _TranslationsVolunteeringEs._(_root);
}

// Path: about
class _TranslationsAboutEs {
	_TranslationsAboutEs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get gretting => '¡Bienvenido, usuario desconocido!';
	String get title => 'Desarrollador de Software';
	String get presentation => 'Aspiro a ser una persona capaz de motivar, liderar y enseñar a los demás. Estoy interesado en el desarrollo backend y abierto a aprender de las distintas áreas en las que pueda especializarme. Me gusta involucrarme en actividades comunitarias y de aprendizaje diversificado. Además, en mis tiempos libres me dedico a desarrollar proyectos personales.';
}

// Path: extracurricular
class _TranslationsExtracurricularEs {
	_TranslationsExtracurricularEs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _TranslationsExtracurricularAct1Es act1 = _TranslationsExtracurricularAct1Es._(_root);
	late final _TranslationsExtracurricularAct2Es act2 = _TranslationsExtracurricularAct2Es._(_root);
	late final _TranslationsExtracurricularAct3Es act3 = _TranslationsExtracurricularAct3Es._(_root);
}

// Path: project
class _TranslationsProjectEs {
	_TranslationsProjectEs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _TranslationsProjectSnowNotepadEs snowNotepad = _TranslationsProjectSnowNotepadEs._(_root);
	late final _TranslationsProjectCrimeBusterEs crimeBuster = _TranslationsProjectCrimeBusterEs._(_root);
	late final _TranslationsProjectPolarisEs polaris = _TranslationsProjectPolarisEs._(_root);
	late final _TranslationsProjectNotepadWebEs notepadWeb = _TranslationsProjectNotepadWebEs._(_root);
	late final _TranslationsProjectNotepadAPIEs notepadAPI = _TranslationsProjectNotepadAPIEs._(_root);
	late final _TranslationsProjectChasing30Es chasing30 = _TranslationsProjectChasing30Es._(_root);
	late final _TranslationsProjectSnakeGameEs snakeGame = _TranslationsProjectSnakeGameEs._(_root);
}

// Path: skills
class _TranslationsSkillsEs {
	_TranslationsSkillsEs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _TranslationsSkillsHeadersEs headers = _TranslationsSkillsHeadersEs._(_root);
	late final _TranslationsSkillsEducationEs education = _TranslationsSkillsEducationEs._(_root);
	List<String> get softskills => [
		'Trabajo en Equipo',
		'Liderazgo',
		'Adaptabilidad',
		'Resolución de Problemas',
		'Pensamiento Crítico',
		'Empatía',
		'Gestión de Proyectos',
		'Orientado a Resultados',
	];
	List<String> get languages => [
		'Español',
		'Inglés',
	];
}

// Path: tabs
class _TranslationsTabsEs {
	_TranslationsTabsEs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get about => 'Sobre mí';
	String get skills => 'Habilidades';
	String get projects => 'Proyectos';
	String get extracurricular => 'Extracurriculares';
	String get volunteering => 'Voluntariado';
}

// Path: volunteering
class _TranslationsVolunteeringEs {
	_TranslationsVolunteeringEs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _TranslationsVolunteeringVol1Es vol1 = _TranslationsVolunteeringVol1Es._(_root);
	late final _TranslationsVolunteeringVol2Es vol2 = _TranslationsVolunteeringVol2Es._(_root);
	late final _TranslationsVolunteeringVol3Es vol3 = _TranslationsVolunteeringVol3Es._(_root);
	late final _TranslationsVolunteeringVol4Es vol4 = _TranslationsVolunteeringVol4Es._(_root);
}

// Path: extracurricular.act1
class _TranslationsExtracurricularAct1Es {
	_TranslationsExtracurricularAct1Es._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => '<El_Hackathon> Vol. I';
	String get institution => 'Guayaquil Tech';
	String date({required Object startDate, required Object endDate}) => '${startDate} a ${endDate}';
	String get description => 'Participación en la competencia de programación en un desafío propuesto por la empresa Publifyer, contribuyendo al desarrollo de la API de nuestro proyecto, misma que consumía los servicios de OpenAI.';
}

// Path: extracurricular.act2
class _TranslationsExtracurricularAct2Es {
	_TranslationsExtracurricularAct2Es._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => 'NASA Space Apps Challenge Guayaquil 2023';
	String get institution => 'CORPCITI';
	String date({required Object startDate, required Object endDate}) => '${startDate} a ${endDate}';
	String get description => 'Líder y participante en la competencia de programación local Space Apps en el desafío “Planetary Tourism Office”, diseñando la interfaz frontend.';
}

// Path: extracurricular.act3
class _TranslationsExtracurricularAct3Es {
	_TranslationsExtracurricularAct3Es._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => 'Concurso IOT&AI Latinoamérica 2023';
	String get institution => 'IEEE TEMS';
	String date({required Object startDate, required Object endDate}) => '${startDate} a ${endDate}';
	String get description => 'Diseño de la interfaz frontend para el proyecto “CrimeBuster”, el cual consiste en un sistema de detección de crímenes en tiempo real, utilizando inteligencia artificial y aprendizaje automático.';
}

// Path: project.snowNotepad
class _TranslationsProjectSnowNotepadEs {
	_TranslationsProjectSnowNotepadEs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Snow Notepad';
	String get description => 'Un bloc de notas móvil desarrollado en Flutter, utilizando SQLite para la administración de las notas del usuario directamente en su dispositivo y sin conexión a internet.';
	String image({required Object imagePath}) => '${imagePath}';
	String repository({required Object repository}) => '${repository}';
	List<String> get technologies => [
		'flutter',
		'dart',
	];
}

// Path: project.crimeBuster
class _TranslationsProjectCrimeBusterEs {
	_TranslationsProjectCrimeBusterEs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'CrimeBuster';
	String get description => 'App para proyecto de detección de crímenes en el concurso IOT&AI Latinoamérica 2023, encargado del diseño de la interfaz gráfica.';
	String image({required Object imagePath}) => '${imagePath}';
	String repository({required Object repository}) => '${repository}';
	List<String> get technologies => [
		'flutter',
		'dart',
	];
}

// Path: project.polaris
class _TranslationsProjectPolarisEs {
	_TranslationsProjectPolarisEs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Proyecto Polaris';
	String get description => 'Página web que consiste en educar a los internautas sobre los planetas, y una interfaz que permita emular un itinerario de viajes, proyecto para la competencia NASA Space Apps 2023';
	String image({required Object imagePath}) => '${imagePath}';
	String repository({required Object repository}) => '${repository}';
	List<String> get technologies => [
		'flutter',
		'dart',
	];
}

// Path: project.notepadWeb
class _TranslationsProjectNotepadWebEs {
	_TranslationsProjectNotepadWebEs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Notepad: Web App';
	String get description => 'Un bloc de notas web desarrollado en Flutter, hace peticiones a una API personal para implementar todos los métodos CRUD hacia una base de datos MySQL.';
	String image({required Object imagePath}) => '${imagePath}';
	String repository({required Object repository}) => '${repository}';
	List<String> get technologies => [
		'flutter',
		'dart',
	];
}

// Path: project.notepadAPI
class _TranslationsProjectNotepadAPIEs {
	_TranslationsProjectNotepadAPIEs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Notepad: API Rest';
	String get description => 'Una API desarrollada en Java Springboot para comunicar la web del bloc de notas con una base de datos MySQL.';
	String image({required Object imagePath}) => '${imagePath}';
	String repository({required Object repository}) => '${repository}';
	List<String> get technologies => [
		'java',
		'springboot',
		'mysql',
	];
}

// Path: project.chasing30
class _TranslationsProjectChasing30Es {
	_TranslationsProjectChasing30Es._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Chasing 30';
	String get description => 'Juego por consola de un tablero que recorre la computadora para buscar el número 30 mientras el tablero se desordena cada cierto tiempo, diseñado como desafío para la competencia PyWeekend ESPOL 2023.';
	String image({required Object imagePath}) => '${imagePath}';
	String repository({required Object repository}) => '${repository}';
	List<String> get technologies => [
		'python',
	];
}

// Path: project.snakeGame
class _TranslationsProjectSnakeGameEs {
	_TranslationsProjectSnakeGameEs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Snake Game: Computer Society ESPOL Edition';
	String get description => 'Líder de proyecto colaborativo del clásico juego Snake, adaptado y personalizado al ambiente de la ESPOL, para su exposición en el aniversario de la rama estudiantil IEEE ESPOL 2023.';
	String image({required Object imagePath}) => '${imagePath}';
	String repository({required Object repository}) => '${repository}';
	List<String> get technologies => [
		'java',
	];
}

// Path: skills.headers
class _TranslationsSkillsHeadersEs {
	_TranslationsSkillsHeadersEs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get education => 'Educación';
	String get softskills => 'Habilidades Blandas';
	String get languages => 'Idiomas';
}

// Path: skills.education
class _TranslationsSkillsEducationEs {
	_TranslationsSkillsEducationEs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final _TranslationsSkillsEducationUniversityEs university = _TranslationsSkillsEducationUniversityEs._(_root);
	late final _TranslationsSkillsEducationCourseEs course = _TranslationsSkillsEducationCourseEs._(_root);
}

// Path: volunteering.vol1
class _TranslationsVolunteeringVol1Es {
	_TranslationsVolunteeringVol1Es._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => 'Vicepresidente';
	String get institution => 'IEEE ESPOL Computer Society';
	String date({required Object startDate, required Object endDate}) => '${startDate} a ${endDate}';
	String get description => 'Dirección de proyectos, comunicación con estudiantes.';
}

// Path: volunteering.vol2
class _TranslationsVolunteeringVol2Es {
	_TranslationsVolunteeringVol2Es._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => 'Colaborador en la 12va edición de PyWeekend 2023';
	String get institution => 'ESPOL';
	String date({required Object startDate, required Object endDate}) => '${startDate} a ${endDate}';
	String get description => 'Contribuí en la elaboración del desafío de la semifinal de la competencia de programación en Python. Además, ayudé a orientar a los participantes el día de la competencia.';
}

// Path: volunteering.vol3
class _TranslationsVolunteeringVol3Es {
	_TranslationsVolunteeringVol3Es._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => 'Guía en Django Girls';
	String get institution => 'Open Lab';
	String date({required Object startDate, required Object endDate}) => '${startDate} a ${endDate}';
	String get description => 'Contribuí a que las participantes puedan desarrollar, satisfactoriamente, el tutorial introductorio a Django.';
}

// Path: volunteering.vol4
class _TranslationsVolunteeringVol4Es {
	_TranslationsVolunteeringVol4Es._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => 'Colaborador en la 2da edición de PyTime IoT';
	String get institution => 'Niot ESPOL';
	String date({required Object startDate, required Object endDate}) => '${startDate} a ${endDate}';
	String get description => 'Dar soporte a los estudiantes en temas relacionados al lenguaje de programación Python y resolver sus inquietudes durante su proceso de aprendizaje.';
}

// Path: skills.education.university
class _TranslationsSkillsEducationUniversityEs {
	_TranslationsSkillsEducationUniversityEs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => 'Ingeniería en Ciencias de la Computación';
	String get institution => 'ESPOL';
	String date({required Object startDate}) => '${startDate} hasta la actualidad';
	String get description => '4to semestre';
}

// Path: skills.education.course
class _TranslationsSkillsEducationCourseEs {
	_TranslationsSkillsEducationCourseEs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => 'Ingeniería de Datos';
	String get institution => 'SEE';
	String date({required Object startDate, required Object endDate}) => '${startDate} hasta ${endDate}';
	String get description => 'Arquitectura de Datos\nModelado y Diseño de Datos\nProcesamiento Analítico\nCalidad de Datos\nProcesamiento de Big Data con Apache Spark\nTuberías de Datos con Apache Airflow';
}

// Path: <root>
class _TranslationsEn implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _TranslationsEn _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsAboutEn about = _TranslationsAboutEn._(_root);
	@override late final _TranslationsExtracurricularEn extracurricular = _TranslationsExtracurricularEn._(_root);
	@override late final _TranslationsProjectEn project = _TranslationsProjectEn._(_root);
	@override late final _TranslationsSkillsEn skills = _TranslationsSkillsEn._(_root);
	@override late final _TranslationsTabsEn tabs = _TranslationsTabsEn._(_root);
	@override late final _TranslationsVolunteeringEn volunteering = _TranslationsVolunteeringEn._(_root);
}

// Path: about
class _TranslationsAboutEn implements _TranslationsAboutEs {
	_TranslationsAboutEn._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get gretting => 'Welcome, unknown user!';
	@override String get title => 'Software Developer';
	@override String get presentation => 'I aspire to be a person capable of motivating, leading and teaching others. I am interested in backend development and open to learning from different areas that I can specialize in. I enjoy being involved in community and diversified learning activities. Also, in my free time I dedicate myself to develop personal projects.';
}

// Path: extracurricular
class _TranslationsExtracurricularEn implements _TranslationsExtracurricularEs {
	_TranslationsExtracurricularEn._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsExtracurricularAct1En act1 = _TranslationsExtracurricularAct1En._(_root);
	@override late final _TranslationsExtracurricularAct2En act2 = _TranslationsExtracurricularAct2En._(_root);
	@override late final _TranslationsExtracurricularAct3En act3 = _TranslationsExtracurricularAct3En._(_root);
}

// Path: project
class _TranslationsProjectEn implements _TranslationsProjectEs {
	_TranslationsProjectEn._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsProjectSnowNotepadEn snowNotepad = _TranslationsProjectSnowNotepadEn._(_root);
	@override late final _TranslationsProjectCrimeBusterEn crimeBuster = _TranslationsProjectCrimeBusterEn._(_root);
	@override late final _TranslationsProjectPolarisEn polaris = _TranslationsProjectPolarisEn._(_root);
	@override late final _TranslationsProjectNotepadWebEn notepadWeb = _TranslationsProjectNotepadWebEn._(_root);
	@override late final _TranslationsProjectNotepadAPIEn notepadAPI = _TranslationsProjectNotepadAPIEn._(_root);
	@override late final _TranslationsProjectChasing30En chasing30 = _TranslationsProjectChasing30En._(_root);
	@override late final _TranslationsProjectSnakeGameEn snakeGame = _TranslationsProjectSnakeGameEn._(_root);
}

// Path: skills
class _TranslationsSkillsEn implements _TranslationsSkillsEs {
	_TranslationsSkillsEn._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSkillsHeadersEn headers = _TranslationsSkillsHeadersEn._(_root);
	@override late final _TranslationsSkillsEducationEn education = _TranslationsSkillsEducationEn._(_root);
	@override List<String> get softskills => [
		'Teamwork',
		'Leadership',
		'Adaptability',
		'Problem Solving',
		'Critical Thinking',
		'Empathy',
		'Project Management',
		'Results Oriented',
	];
	@override List<String> get languages => [
		'Spanish',
		'English',
	];
}

// Path: tabs
class _TranslationsTabsEn implements _TranslationsTabsEs {
	_TranslationsTabsEn._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get about => 'About';
	@override String get skills => 'Skills';
	@override String get projects => 'Projects';
	@override String get extracurricular => 'Extracurricular';
	@override String get volunteering => 'Volunteering';
}

// Path: volunteering
class _TranslationsVolunteeringEn implements _TranslationsVolunteeringEs {
	_TranslationsVolunteeringEn._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsVolunteeringVol1En vol1 = _TranslationsVolunteeringVol1En._(_root);
	@override late final _TranslationsVolunteeringVol2En vol2 = _TranslationsVolunteeringVol2En._(_root);
	@override late final _TranslationsVolunteeringVol3En vol3 = _TranslationsVolunteeringVol3En._(_root);
	@override late final _TranslationsVolunteeringVol4En vol4 = _TranslationsVolunteeringVol4En._(_root);
}

// Path: extracurricular.act1
class _TranslationsExtracurricularAct1En implements _TranslationsExtracurricularAct1Es {
	_TranslationsExtracurricularAct1En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get name => '<El_Hackathon> Vol. I';
	@override String get institution => 'Guayaquil Tech';
	@override String date({required Object startDate, required Object endDate}) => '${startDate} to ${endDate}';
	@override String get description => 'Participation in the programming competition in a challenge proposed by the company Publifyer, contributing to the development of our project\'s API, which consumed services from OpenAI.';
}

// Path: extracurricular.act2
class _TranslationsExtracurricularAct2En implements _TranslationsExtracurricularAct2Es {
	_TranslationsExtracurricularAct2En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get name => 'NASA Space Apps Challenge Guayaquil 2023';
	@override String get institution => 'CORPCITI';
	@override String date({required Object startDate, required Object endDate}) => '${startDate} to ${endDate}';
	@override String get description => 'Leader and participant in the local programming competition Space Apps in the challenge \'Planetary Tourism Office\', designing the frontend interface.';
}

// Path: extracurricular.act3
class _TranslationsExtracurricularAct3En implements _TranslationsExtracurricularAct3Es {
	_TranslationsExtracurricularAct3En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get name => 'IOT&AI Latin America Competition 2023';
	@override String get institution => 'IEEE TEMS';
	@override String date({required Object startDate, required Object endDate}) => '${startDate} to ${endDate}';
	@override String get description => 'Design of the frontend interface for the project \'CrimeBuster\', which consists of a real-time crime detection system using artificial intelligence and machine learning.';
}

// Path: project.snowNotepad
class _TranslationsProjectSnowNotepadEn implements _TranslationsProjectSnowNotepadEs {
	_TranslationsProjectSnowNotepadEn._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Snow Notepad';
	@override String get description => 'A mobile notepad developed in Flutter, using SQLite for managing user notes directly on their device and offline.';
	@override String image({required Object imagePath}) => '${imagePath}';
	@override String repository({required Object repository}) => '${repository}';
	@override List<String> get technologies => [
		'flutter',
		'dart',
	];
}

// Path: project.crimeBuster
class _TranslationsProjectCrimeBusterEn implements _TranslationsProjectCrimeBusterEs {
	_TranslationsProjectCrimeBusterEn._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'CrimeBuster';
	@override String get description => 'App for crime detection project in the IOT&AI Latin America 2023 competition, responsible for the graphical interface design.';
	@override String image({required Object imagePath}) => '${imagePath}';
	@override String repository({required Object repository}) => '${repository}';
	@override List<String> get technologies => [
		'flutter',
		'dart',
	];
}

// Path: project.polaris
class _TranslationsProjectPolarisEn implements _TranslationsProjectPolarisEs {
	_TranslationsProjectPolarisEn._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Polaris Project';
	@override String get description => 'A website aimed at educating internet users about planets, with an interface that allows emulating a travel itinerary, project for the NASA Space Apps 2023 competition.';
	@override String image({required Object imagePath}) => '${imagePath}';
	@override String repository({required Object repository}) => '${repository}';
	@override List<String> get technologies => [
		'flutter',
		'dart',
	];
}

// Path: project.notepadWeb
class _TranslationsProjectNotepadWebEn implements _TranslationsProjectNotepadWebEs {
	_TranslationsProjectNotepadWebEn._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notepad: Web App';
	@override String get description => 'A web notepad developed in Flutter, making requests to a personal API to implement all CRUD methods towards a MySQL database.';
	@override String image({required Object imagePath}) => '${imagePath}';
	@override String repository({required Object repository}) => '${repository}';
	@override List<String> get technologies => [
		'flutter',
		'dart',
	];
}

// Path: project.notepadAPI
class _TranslationsProjectNotepadAPIEn implements _TranslationsProjectNotepadAPIEs {
	_TranslationsProjectNotepadAPIEn._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Notepad: Rest API';
	@override String get description => 'An API developed in Java Springboot to communicate the web notepad with a MySQL database.';
	@override String image({required Object imagePath}) => '${imagePath}';
	@override String repository({required Object repository}) => '${repository}';
	@override List<String> get technologies => [
		'java',
		'springboot',
		'mysql',
	];
}

// Path: project.chasing30
class _TranslationsProjectChasing30En implements _TranslationsProjectChasing30Es {
	_TranslationsProjectChasing30En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Chasing 30';
	@override String get description => 'Console game of a board that moves around to find the number 30 while the board gets shuffled at regular intervals, designed as a challenge for the PyWeekend ESPOL 2023 competition.';
	@override String image({required Object imagePath}) => '${imagePath}';
	@override String repository({required Object repository}) => '${repository}';
	@override List<String> get technologies => [
		'python',
	];
}

// Path: project.snakeGame
class _TranslationsProjectSnakeGameEn implements _TranslationsProjectSnakeGameEs {
	_TranslationsProjectSnakeGameEn._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Snake Game: Computer Society ESPOL Edition';
	@override String get description => 'Collaborative project leader of the classic Snake game, adapted and customized to the ESPOL environment, for its exhibition at the anniversary of the IEEE ESPOL student branch in 2023.';
	@override String image({required Object imagePath}) => '${imagePath}';
	@override String repository({required Object repository}) => '${repository}';
	@override List<String> get technologies => [
		'java',
	];
}

// Path: skills.headers
class _TranslationsSkillsHeadersEn implements _TranslationsSkillsHeadersEs {
	_TranslationsSkillsHeadersEn._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get education => 'Education';
	@override String get softskills => 'Soft Skills';
	@override String get languages => 'Languages';
}

// Path: skills.education
class _TranslationsSkillsEducationEn implements _TranslationsSkillsEducationEs {
	_TranslationsSkillsEducationEn._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsSkillsEducationUniversityEn university = _TranslationsSkillsEducationUniversityEn._(_root);
	@override late final _TranslationsSkillsEducationCourseEn course = _TranslationsSkillsEducationCourseEn._(_root);
}

// Path: volunteering.vol1
class _TranslationsVolunteeringVol1En implements _TranslationsVolunteeringVol1Es {
	_TranslationsVolunteeringVol1En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get name => 'Vice President';
	@override String get institution => 'IEEE ESPOL Computer Society';
	@override String date({required Object startDate, required Object endDate}) => '${startDate} to ${endDate}';
	@override String get description => 'Project management, communication with students.';
}

// Path: volunteering.vol2
class _TranslationsVolunteeringVol2En implements _TranslationsVolunteeringVol2Es {
	_TranslationsVolunteeringVol2En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get name => 'Contributor in the 12th edition of PyWeekend 2023';
	@override String get institution => 'ESPOL';
	@override String date({required Object startDate, required Object endDate}) => '${startDate} to ${endDate}';
	@override String get description => 'Contributed to the development of the semifinal challenge of the Python programming competition. Also, helped guide participants on the day of the competition.';
}

// Path: volunteering.vol3
class _TranslationsVolunteeringVol3En implements _TranslationsVolunteeringVol3Es {
	_TranslationsVolunteeringVol3En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get name => 'Guide at Django Girls';
	@override String get institution => 'Open Lab';
	@override String date({required Object startDate, required Object endDate}) => '${startDate} to ${endDate}';
	@override String get description => 'Contributed to ensure that participants successfully complete the introductory Django tutorial.';
}

// Path: volunteering.vol4
class _TranslationsVolunteeringVol4En implements _TranslationsVolunteeringVol4Es {
	_TranslationsVolunteeringVol4En._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get name => 'Contributor in the 2nd edition of PyTime IoT';
	@override String get institution => 'Niot ESPOL';
	@override String date({required Object startDate, required Object endDate}) => '${startDate} to ${endDate}';
	@override String get description => 'Provided support to students in topics related to the Python programming language and resolved their inquiries during their learning process.';
}

// Path: skills.education.university
class _TranslationsSkillsEducationUniversityEn implements _TranslationsSkillsEducationUniversityEs {
	_TranslationsSkillsEducationUniversityEn._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get name => 'Computer Science Engineering';
	@override String get institution => 'ESPOL';
	@override String date({required Object startDate}) => '${startDate} to Present';
	@override String get description => '4th semester';
}

// Path: skills.education.course
class _TranslationsSkillsEducationCourseEn implements _TranslationsSkillsEducationCourseEs {
	_TranslationsSkillsEducationCourseEn._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get name => 'Data Engineering';
	@override String get institution => 'SEE';
	@override String date({required Object startDate, required Object endDate}) => '${startDate} to ${endDate}';
	@override String get description => 'Data Architecture\nData Modeling and Design\nAnalytical Processing\nData Quality\nBig Data Processing with Apache Spark\nData Pipelines with Apache Airflow';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'about.gretting': return '¡Bienvenido, usuario desconocido!';
			case 'about.title': return 'Desarrollador de Software';
			case 'about.presentation': return 'Aspiro a ser una persona capaz de motivar, liderar y enseñar a los demás. Estoy interesado en el desarrollo backend y abierto a aprender de las distintas áreas en las que pueda especializarme. Me gusta involucrarme en actividades comunitarias y de aprendizaje diversificado. Además, en mis tiempos libres me dedico a desarrollar proyectos personales.';
			case 'extracurricular.act1.name': return '<El_Hackathon> Vol. I';
			case 'extracurricular.act1.institution': return 'Guayaquil Tech';
			case 'extracurricular.act1.date': return ({required Object startDate, required Object endDate}) => '${startDate} a ${endDate}';
			case 'extracurricular.act1.description': return 'Participación en la competencia de programación en un desafío propuesto por la empresa Publifyer, contribuyendo al desarrollo de la API de nuestro proyecto, misma que consumía los servicios de OpenAI.';
			case 'extracurricular.act2.name': return 'NASA Space Apps Challenge Guayaquil 2023';
			case 'extracurricular.act2.institution': return 'CORPCITI';
			case 'extracurricular.act2.date': return ({required Object startDate, required Object endDate}) => '${startDate} a ${endDate}';
			case 'extracurricular.act2.description': return 'Líder y participante en la competencia de programación local Space Apps en el desafío “Planetary Tourism Office”, diseñando la interfaz frontend.';
			case 'extracurricular.act3.name': return 'Concurso IOT&AI Latinoamérica 2023';
			case 'extracurricular.act3.institution': return 'IEEE TEMS';
			case 'extracurricular.act3.date': return ({required Object startDate, required Object endDate}) => '${startDate} a ${endDate}';
			case 'extracurricular.act3.description': return 'Diseño de la interfaz frontend para el proyecto “CrimeBuster”, el cual consiste en un sistema de detección de crímenes en tiempo real, utilizando inteligencia artificial y aprendizaje automático.';
			case 'project.snowNotepad.title': return 'Snow Notepad';
			case 'project.snowNotepad.description': return 'Un bloc de notas móvil desarrollado en Flutter, utilizando SQLite para la administración de las notas del usuario directamente en su dispositivo y sin conexión a internet.';
			case 'project.snowNotepad.image': return ({required Object imagePath}) => '${imagePath}';
			case 'project.snowNotepad.repository': return ({required Object repository}) => '${repository}';
			case 'project.snowNotepad.technologies.0': return 'flutter';
			case 'project.snowNotepad.technologies.1': return 'dart';
			case 'project.crimeBuster.title': return 'CrimeBuster';
			case 'project.crimeBuster.description': return 'App para proyecto de detección de crímenes en el concurso IOT&AI Latinoamérica 2023, encargado del diseño de la interfaz gráfica.';
			case 'project.crimeBuster.image': return ({required Object imagePath}) => '${imagePath}';
			case 'project.crimeBuster.repository': return ({required Object repository}) => '${repository}';
			case 'project.crimeBuster.technologies.0': return 'flutter';
			case 'project.crimeBuster.technologies.1': return 'dart';
			case 'project.polaris.title': return 'Proyecto Polaris';
			case 'project.polaris.description': return 'Página web que consiste en educar a los internautas sobre los planetas, y una interfaz que permita emular un itinerario de viajes, proyecto para la competencia NASA Space Apps 2023';
			case 'project.polaris.image': return ({required Object imagePath}) => '${imagePath}';
			case 'project.polaris.repository': return ({required Object repository}) => '${repository}';
			case 'project.polaris.technologies.0': return 'flutter';
			case 'project.polaris.technologies.1': return 'dart';
			case 'project.notepadWeb.title': return 'Notepad: Web App';
			case 'project.notepadWeb.description': return 'Un bloc de notas web desarrollado en Flutter, hace peticiones a una API personal para implementar todos los métodos CRUD hacia una base de datos MySQL.';
			case 'project.notepadWeb.image': return ({required Object imagePath}) => '${imagePath}';
			case 'project.notepadWeb.repository': return ({required Object repository}) => '${repository}';
			case 'project.notepadWeb.technologies.0': return 'flutter';
			case 'project.notepadWeb.technologies.1': return 'dart';
			case 'project.notepadAPI.title': return 'Notepad: API Rest';
			case 'project.notepadAPI.description': return 'Una API desarrollada en Java Springboot para comunicar la web del bloc de notas con una base de datos MySQL.';
			case 'project.notepadAPI.image': return ({required Object imagePath}) => '${imagePath}';
			case 'project.notepadAPI.repository': return ({required Object repository}) => '${repository}';
			case 'project.notepadAPI.technologies.0': return 'java';
			case 'project.notepadAPI.technologies.1': return 'springboot';
			case 'project.notepadAPI.technologies.2': return 'mysql';
			case 'project.chasing30.title': return 'Chasing 30';
			case 'project.chasing30.description': return 'Juego por consola de un tablero que recorre la computadora para buscar el número 30 mientras el tablero se desordena cada cierto tiempo, diseñado como desafío para la competencia PyWeekend ESPOL 2023.';
			case 'project.chasing30.image': return ({required Object imagePath}) => '${imagePath}';
			case 'project.chasing30.repository': return ({required Object repository}) => '${repository}';
			case 'project.chasing30.technologies.0': return 'python';
			case 'project.snakeGame.title': return 'Snake Game: Computer Society ESPOL Edition';
			case 'project.snakeGame.description': return 'Líder de proyecto colaborativo del clásico juego Snake, adaptado y personalizado al ambiente de la ESPOL, para su exposición en el aniversario de la rama estudiantil IEEE ESPOL 2023.';
			case 'project.snakeGame.image': return ({required Object imagePath}) => '${imagePath}';
			case 'project.snakeGame.repository': return ({required Object repository}) => '${repository}';
			case 'project.snakeGame.technologies.0': return 'java';
			case 'skills.headers.education': return 'Educación';
			case 'skills.headers.softskills': return 'Habilidades Blandas';
			case 'skills.headers.languages': return 'Idiomas';
			case 'skills.education.university.name': return 'Ingeniería en Ciencias de la Computación';
			case 'skills.education.university.institution': return 'ESPOL';
			case 'skills.education.university.date': return ({required Object startDate}) => '${startDate} hasta la actualidad';
			case 'skills.education.university.description': return '4to semestre';
			case 'skills.education.course.name': return 'Ingeniería de Datos';
			case 'skills.education.course.institution': return 'SEE';
			case 'skills.education.course.date': return ({required Object startDate, required Object endDate}) => '${startDate} hasta ${endDate}';
			case 'skills.education.course.description': return 'Arquitectura de Datos\nModelado y Diseño de Datos\nProcesamiento Analítico\nCalidad de Datos\nProcesamiento de Big Data con Apache Spark\nTuberías de Datos con Apache Airflow';
			case 'skills.softskills.0': return 'Trabajo en Equipo';
			case 'skills.softskills.1': return 'Liderazgo';
			case 'skills.softskills.2': return 'Adaptabilidad';
			case 'skills.softskills.3': return 'Resolución de Problemas';
			case 'skills.softskills.4': return 'Pensamiento Crítico';
			case 'skills.softskills.5': return 'Empatía';
			case 'skills.softskills.6': return 'Gestión de Proyectos';
			case 'skills.softskills.7': return 'Orientado a Resultados';
			case 'skills.languages.0': return 'Español';
			case 'skills.languages.1': return 'Inglés';
			case 'tabs.about': return 'Sobre mí';
			case 'tabs.skills': return 'Habilidades';
			case 'tabs.projects': return 'Proyectos';
			case 'tabs.extracurricular': return 'Extracurriculares';
			case 'tabs.volunteering': return 'Voluntariado';
			case 'volunteering.vol1.name': return 'Vicepresidente';
			case 'volunteering.vol1.institution': return 'IEEE ESPOL Computer Society';
			case 'volunteering.vol1.date': return ({required Object startDate, required Object endDate}) => '${startDate} a ${endDate}';
			case 'volunteering.vol1.description': return 'Dirección de proyectos, comunicación con estudiantes.';
			case 'volunteering.vol2.name': return 'Colaborador en la 12va edición de PyWeekend 2023';
			case 'volunteering.vol2.institution': return 'ESPOL';
			case 'volunteering.vol2.date': return ({required Object startDate, required Object endDate}) => '${startDate} a ${endDate}';
			case 'volunteering.vol2.description': return 'Contribuí en la elaboración del desafío de la semifinal de la competencia de programación en Python. Además, ayudé a orientar a los participantes el día de la competencia.';
			case 'volunteering.vol3.name': return 'Guía en Django Girls';
			case 'volunteering.vol3.institution': return 'Open Lab';
			case 'volunteering.vol3.date': return ({required Object startDate, required Object endDate}) => '${startDate} a ${endDate}';
			case 'volunteering.vol3.description': return 'Contribuí a que las participantes puedan desarrollar, satisfactoriamente, el tutorial introductorio a Django.';
			case 'volunteering.vol4.name': return 'Colaborador en la 2da edición de PyTime IoT';
			case 'volunteering.vol4.institution': return 'Niot ESPOL';
			case 'volunteering.vol4.date': return ({required Object startDate, required Object endDate}) => '${startDate} a ${endDate}';
			case 'volunteering.vol4.description': return 'Dar soporte a los estudiantes en temas relacionados al lenguaje de programación Python y resolver sus inquietudes durante su proceso de aprendizaje.';
			default: return null;
		}
	}
}

extension on _TranslationsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'about.gretting': return 'Welcome, unknown user!';
			case 'about.title': return 'Software Developer';
			case 'about.presentation': return 'I aspire to be a person capable of motivating, leading and teaching others. I am interested in backend development and open to learning from different areas that I can specialize in. I enjoy being involved in community and diversified learning activities. Also, in my free time I dedicate myself to develop personal projects.';
			case 'extracurricular.act1.name': return '<El_Hackathon> Vol. I';
			case 'extracurricular.act1.institution': return 'Guayaquil Tech';
			case 'extracurricular.act1.date': return ({required Object startDate, required Object endDate}) => '${startDate} to ${endDate}';
			case 'extracurricular.act1.description': return 'Participation in the programming competition in a challenge proposed by the company Publifyer, contributing to the development of our project\'s API, which consumed services from OpenAI.';
			case 'extracurricular.act2.name': return 'NASA Space Apps Challenge Guayaquil 2023';
			case 'extracurricular.act2.institution': return 'CORPCITI';
			case 'extracurricular.act2.date': return ({required Object startDate, required Object endDate}) => '${startDate} to ${endDate}';
			case 'extracurricular.act2.description': return 'Leader and participant in the local programming competition Space Apps in the challenge \'Planetary Tourism Office\', designing the frontend interface.';
			case 'extracurricular.act3.name': return 'IOT&AI Latin America Competition 2023';
			case 'extracurricular.act3.institution': return 'IEEE TEMS';
			case 'extracurricular.act3.date': return ({required Object startDate, required Object endDate}) => '${startDate} to ${endDate}';
			case 'extracurricular.act3.description': return 'Design of the frontend interface for the project \'CrimeBuster\', which consists of a real-time crime detection system using artificial intelligence and machine learning.';
			case 'project.snowNotepad.title': return 'Snow Notepad';
			case 'project.snowNotepad.description': return 'A mobile notepad developed in Flutter, using SQLite for managing user notes directly on their device and offline.';
			case 'project.snowNotepad.image': return ({required Object imagePath}) => '${imagePath}';
			case 'project.snowNotepad.repository': return ({required Object repository}) => '${repository}';
			case 'project.snowNotepad.technologies.0': return 'flutter';
			case 'project.snowNotepad.technologies.1': return 'dart';
			case 'project.crimeBuster.title': return 'CrimeBuster';
			case 'project.crimeBuster.description': return 'App for crime detection project in the IOT&AI Latin America 2023 competition, responsible for the graphical interface design.';
			case 'project.crimeBuster.image': return ({required Object imagePath}) => '${imagePath}';
			case 'project.crimeBuster.repository': return ({required Object repository}) => '${repository}';
			case 'project.crimeBuster.technologies.0': return 'flutter';
			case 'project.crimeBuster.technologies.1': return 'dart';
			case 'project.polaris.title': return 'Polaris Project';
			case 'project.polaris.description': return 'A website aimed at educating internet users about planets, with an interface that allows emulating a travel itinerary, project for the NASA Space Apps 2023 competition.';
			case 'project.polaris.image': return ({required Object imagePath}) => '${imagePath}';
			case 'project.polaris.repository': return ({required Object repository}) => '${repository}';
			case 'project.polaris.technologies.0': return 'flutter';
			case 'project.polaris.technologies.1': return 'dart';
			case 'project.notepadWeb.title': return 'Notepad: Web App';
			case 'project.notepadWeb.description': return 'A web notepad developed in Flutter, making requests to a personal API to implement all CRUD methods towards a MySQL database.';
			case 'project.notepadWeb.image': return ({required Object imagePath}) => '${imagePath}';
			case 'project.notepadWeb.repository': return ({required Object repository}) => '${repository}';
			case 'project.notepadWeb.technologies.0': return 'flutter';
			case 'project.notepadWeb.technologies.1': return 'dart';
			case 'project.notepadAPI.title': return 'Notepad: Rest API';
			case 'project.notepadAPI.description': return 'An API developed in Java Springboot to communicate the web notepad with a MySQL database.';
			case 'project.notepadAPI.image': return ({required Object imagePath}) => '${imagePath}';
			case 'project.notepadAPI.repository': return ({required Object repository}) => '${repository}';
			case 'project.notepadAPI.technologies.0': return 'java';
			case 'project.notepadAPI.technologies.1': return 'springboot';
			case 'project.notepadAPI.technologies.2': return 'mysql';
			case 'project.chasing30.title': return 'Chasing 30';
			case 'project.chasing30.description': return 'Console game of a board that moves around to find the number 30 while the board gets shuffled at regular intervals, designed as a challenge for the PyWeekend ESPOL 2023 competition.';
			case 'project.chasing30.image': return ({required Object imagePath}) => '${imagePath}';
			case 'project.chasing30.repository': return ({required Object repository}) => '${repository}';
			case 'project.chasing30.technologies.0': return 'python';
			case 'project.snakeGame.title': return 'Snake Game: Computer Society ESPOL Edition';
			case 'project.snakeGame.description': return 'Collaborative project leader of the classic Snake game, adapted and customized to the ESPOL environment, for its exhibition at the anniversary of the IEEE ESPOL student branch in 2023.';
			case 'project.snakeGame.image': return ({required Object imagePath}) => '${imagePath}';
			case 'project.snakeGame.repository': return ({required Object repository}) => '${repository}';
			case 'project.snakeGame.technologies.0': return 'java';
			case 'skills.headers.education': return 'Education';
			case 'skills.headers.softskills': return 'Soft Skills';
			case 'skills.headers.languages': return 'Languages';
			case 'skills.education.university.name': return 'Computer Science Engineering';
			case 'skills.education.university.institution': return 'ESPOL';
			case 'skills.education.university.date': return ({required Object startDate}) => '${startDate} to Present';
			case 'skills.education.university.description': return '4th semester';
			case 'skills.education.course.name': return 'Data Engineering';
			case 'skills.education.course.institution': return 'SEE';
			case 'skills.education.course.date': return ({required Object startDate, required Object endDate}) => '${startDate} to ${endDate}';
			case 'skills.education.course.description': return 'Data Architecture\nData Modeling and Design\nAnalytical Processing\nData Quality\nBig Data Processing with Apache Spark\nData Pipelines with Apache Airflow';
			case 'skills.softskills.0': return 'Teamwork';
			case 'skills.softskills.1': return 'Leadership';
			case 'skills.softskills.2': return 'Adaptability';
			case 'skills.softskills.3': return 'Problem Solving';
			case 'skills.softskills.4': return 'Critical Thinking';
			case 'skills.softskills.5': return 'Empathy';
			case 'skills.softskills.6': return 'Project Management';
			case 'skills.softskills.7': return 'Results Oriented';
			case 'skills.languages.0': return 'Spanish';
			case 'skills.languages.1': return 'English';
			case 'tabs.about': return 'About';
			case 'tabs.skills': return 'Skills';
			case 'tabs.projects': return 'Projects';
			case 'tabs.extracurricular': return 'Extracurricular';
			case 'tabs.volunteering': return 'Volunteering';
			case 'volunteering.vol1.name': return 'Vice President';
			case 'volunteering.vol1.institution': return 'IEEE ESPOL Computer Society';
			case 'volunteering.vol1.date': return ({required Object startDate, required Object endDate}) => '${startDate} to ${endDate}';
			case 'volunteering.vol1.description': return 'Project management, communication with students.';
			case 'volunteering.vol2.name': return 'Contributor in the 12th edition of PyWeekend 2023';
			case 'volunteering.vol2.institution': return 'ESPOL';
			case 'volunteering.vol2.date': return ({required Object startDate, required Object endDate}) => '${startDate} to ${endDate}';
			case 'volunteering.vol2.description': return 'Contributed to the development of the semifinal challenge of the Python programming competition. Also, helped guide participants on the day of the competition.';
			case 'volunteering.vol3.name': return 'Guide at Django Girls';
			case 'volunteering.vol3.institution': return 'Open Lab';
			case 'volunteering.vol3.date': return ({required Object startDate, required Object endDate}) => '${startDate} to ${endDate}';
			case 'volunteering.vol3.description': return 'Contributed to ensure that participants successfully complete the introductory Django tutorial.';
			case 'volunteering.vol4.name': return 'Contributor in the 2nd edition of PyTime IoT';
			case 'volunteering.vol4.institution': return 'Niot ESPOL';
			case 'volunteering.vol4.date': return ({required Object startDate, required Object endDate}) => '${startDate} to ${endDate}';
			case 'volunteering.vol4.description': return 'Provided support to students in topics related to the Python programming language and resolved their inquiries during their learning process.';
			default: return null;
		}
	}
}
