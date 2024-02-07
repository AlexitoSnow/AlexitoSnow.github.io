/// Generated file. Do not edit.
///
/// Original: i18n
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 102 (51 per locale)
///
/// Built on 2024-02-07 at 03:19 UTC

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
	late final _TranslationsProjectEs project = _TranslationsProjectEs._(_root);
	late final _TranslationsTabsEs tabs = _TranslationsTabsEs._(_root);
	late final _TranslationsTechnologiesEs technologies = _TranslationsTechnologiesEs._(_root);
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

// Path: tabs
class _TranslationsTabsEs {
	_TranslationsTabsEs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get about => 'Sobre mí';
	String get technologies => 'Tecnologías';
	String get projects => 'Proyectos';
}

// Path: technologies
class _TranslationsTechnologiesEs {
	_TranslationsTechnologiesEs._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get languages => 'Lenguajes';
	String get frameworks => 'Marcos de Trabajo';
	String get databases => 'Bases de Datos';
	String get tools => 'Herramientas';
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
	@override late final _TranslationsProjectEn project = _TranslationsProjectEn._(_root);
	@override late final _TranslationsTabsEn tabs = _TranslationsTabsEn._(_root);
	@override late final _TranslationsTechnologiesEn technologies = _TranslationsTechnologiesEn._(_root);
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

// Path: tabs
class _TranslationsTabsEn implements _TranslationsTabsEs {
	_TranslationsTabsEn._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get about => 'About';
	@override String get technologies => 'Technologies';
	@override String get projects => 'Projects';
}

// Path: technologies
class _TranslationsTechnologiesEn implements _TranslationsTechnologiesEs {
	_TranslationsTechnologiesEn._(this._root);

	@override final _TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get languages => 'Languages';
	@override String get frameworks => 'Frameworks';
	@override String get databases => 'Data Bases';
	@override String get tools => 'Tools';
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

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'about.gretting': return '¡Bienvenido, usuario desconocido!';
			case 'about.title': return 'Desarrollador de Software';
			case 'about.presentation': return 'Aspiro a ser una persona capaz de motivar, liderar y enseñar a los demás. Estoy interesado en el desarrollo backend y abierto a aprender de las distintas áreas en las que pueda especializarme. Me gusta involucrarme en actividades comunitarias y de aprendizaje diversificado. Además, en mis tiempos libres me dedico a desarrollar proyectos personales.';
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
			case 'tabs.about': return 'Sobre mí';
			case 'tabs.technologies': return 'Tecnologías';
			case 'tabs.projects': return 'Proyectos';
			case 'technologies.languages': return 'Lenguajes';
			case 'technologies.frameworks': return 'Marcos de Trabajo';
			case 'technologies.databases': return 'Bases de Datos';
			case 'technologies.tools': return 'Herramientas';
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
			case 'tabs.about': return 'About';
			case 'tabs.technologies': return 'Technologies';
			case 'tabs.projects': return 'Projects';
			case 'technologies.languages': return 'Languages';
			case 'technologies.frameworks': return 'Frameworks';
			case 'technologies.databases': return 'Data Bases';
			case 'technologies.tools': return 'Tools';
			default: return null;
		}
	}
}
