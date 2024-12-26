/// Generated file. Do not edit.
///
/// Original: lib/core/localization
/// To regenerate, run: `dart run slang`
///
/// Locales: 2
/// Strings: 152 (76 per locale)
///
/// Built on 2024-12-26 at 20:33 UTC

// coverage:ignore-file
// ignore_for_file: type=lint

import 'package:flutter/widgets.dart';
import 'package:slang/builder/model/node.dart';
import 'package:slang_flutter/slang_flutter.dart';
export 'package:slang_flutter/slang_flutter.dart';

const AppLocale _baseLocale = AppLocale.en;

/// Supported locales, see extension methods below.
///
/// Usage:
/// - LocaleSettings.setLocale(AppLocale.en) // set locale
/// - Locale locale = AppLocale.en.flutterLocale // get flutter locale from enum
/// - if (LocaleSettings.currentLocale == AppLocale.en) // locale check
enum AppLocale with BaseAppLocale<AppLocale, _StringsEn> {
	en(languageCode: 'en', build: _StringsEn.build),
	fa(languageCode: 'fa', build: _StringsFa.build);

	const AppLocale({required this.languageCode, this.scriptCode, this.countryCode, required this.build}); // ignore: unused_element

	@override final String languageCode;
	@override final String? scriptCode;
	@override final String? countryCode;
	@override final TranslationBuilder<AppLocale, _StringsEn> build;

	/// Gets current instance managed by [LocaleSettings].
	_StringsEn get translations => LocaleSettings.instance.translationMap[this]!;
}

/// Method A: Simple
///
/// No rebuild after locale change.
/// Translation happens during initialization of the widget (call of t).
/// Configurable via 'translate_var'.
///
/// Usage:
/// String a = t.someKey.anotherKey;
/// String b = t['someKey.anotherKey']; // Only for edge cases!
_StringsEn get t => LocaleSettings.instance.currentTranslations;

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
/// final t = Translations.of(context); // Get t variable.
/// String a = t.someKey.anotherKey; // Use t variable.
/// String b = t['someKey.anotherKey']; // Only for edge cases!
class Translations {
	Translations._(); // no constructor

	static _StringsEn of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEn>(context).translations;
}

/// The provider for method B
class TranslationProvider extends BaseTranslationProvider<AppLocale, _StringsEn> {
	TranslationProvider({required super.child}) : super(settings: LocaleSettings.instance);

	static InheritedLocaleData<AppLocale, _StringsEn> of(BuildContext context) => InheritedLocaleData.of<AppLocale, _StringsEn>(context);
}

/// Method B shorthand via [BuildContext] extension method.
/// Configurable via 'translate_var'.
///
/// Usage (e.g. in a widget's build method):
/// context.t.someKey.anotherKey
extension BuildContextTranslationsExtension on BuildContext {
	_StringsEn get t => TranslationProvider.of(this).translations;
}

/// Manages all translation instances and the current locale
class LocaleSettings extends BaseFlutterLocaleSettings<AppLocale, _StringsEn> {
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
class AppLocaleUtils extends BaseAppLocaleUtils<AppLocale, _StringsEn> {
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
class _StringsEn implements BaseTranslations<AppLocale, _StringsEn> {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsEn.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
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
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _StringsEn _root = this; // ignore: unused_field

	// Translations
	String hello({required Object name}) => 'Hello ${name}';
	String get loremIpsum => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';
	String get smallLoremIpsum => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.';
	String get language => 'Language';
	String get themeMode => 'Theme Mode';
	String get themeColor => 'Theme Color';
	String get save => 'Save';
	late final _StringsLoginEn login = _StringsLoginEn._(_root);
	String get emptyData => 'Transaction not found';
	String get throwException => 'An error has occurred!';
	String get tryAgain => 'Try again';
	String get noInternet => 'No internet connection.';
	String get showMore => 'Show more';
	String get showLess => 'Show less';
	String get enterOtpCode => 'Please enter the OTP';
	String otpToPhone({required Object number}) => 'We sent verification code via SMS to ${number}';
	String remainTimeOtp({required Object time}) => 'Resend OTP code in ${time}';
	String get invalidMobile => 'Mobile phone number is invalid';
	String get limited => 'Account limited, try later';
	String get blocked => 'Account blocked';
	String get invalidOtp => 'Invalid OTP!';
	String get seeMore => 'See more';
	String get turnOfVpn => 'Turn of vpn';
	String version({required Object version}) => 'Version: ${version}';
	String get cancel => 'Cancel';
	String get skip => 'Skip';
	String get enterToApp => 'EnterToApp';
	String get next => 'Next';
	String get copied => 'Copied successfully.';
	String textInputValidationErrorMessage({required Object field}) => 'The ${field} field information is not valid.';
	String get notFound => 'Page Not Found';
	String get home => 'Home';
	String get about => 'About';
	String get resume => 'Resume';
	String get portfolio => 'Portfolio';
	String get services => 'Services';
	String get contact => 'Contact';
	String get settings => 'Settings';
	String get myName => 'Ali Esmailie';
	String get iAm => 'I\'m ';
	String get developer => 'Developer';
	String get designer => 'Designer';
	String get freelancer => 'Freelancer';
	String get youtuber => 'Youtuber';
	String get aboutTitle => 'Mobile application designer and developer';
	String get birthday => 'Birthday';
	String get myBirthday => '15 May 1998';
	String get website => 'Website';
	String get phone => 'Phone number';
	String get city => 'City';
	String get myCity => 'Tehran, Iran';
	String get age => 'Age';
	String get degree => 'Degree';
	String get myDegree => 'Bachelor';
	String get email => 'E-mail';
	String get freelance => 'Freelance';
	String get available => 'Available';
	String get stats => 'Statistics';
	String get happyClients => 'Happy clients';
	String get projects => 'Projects';
	String get hoursOfSupport => 'Hours of support';
	String get trainedStudent => 'Trained students';
	String get view => 'view';
	String get skills => 'Skills';
	String get yourName => 'Your Name';
	String get YourEmail => 'Your Email';
	String get subject => 'Subject';
	String get message => 'Message';
	String get sensMessage => 'Send message';
	String get address => 'Address';
	String get farsi => 'فارسی';
	String get english => 'English';
	String get aboutMeDescription => 'An experienced Mobile Developer with strong theoretical background and practical skills. Familiar with modern flutter tech stack with more than 8 years of experience in Mobile App Development and more than 5 years of experience in Google’s Flutter.';
	String get coreSkills => 'Core skills';
	String get allSkills => 'All skills';
}

// Path: login
class _StringsLoginEn {
	_StringsLoginEn._(this._root);

	final _StringsEn _root; // ignore: unused_field

	// Translations
	String get success => 'Logged in successfully';
	String get fail => 'Logged in failed';
}

// Path: <root>
class _StringsFa implements _StringsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_StringsFa.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.fa,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <fa>.
	@override final TranslationMetadata<AppLocale, _StringsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _StringsFa _root = this; // ignore: unused_field

	// Translations
	@override String hello({required Object name}) => 'سلام ${name}';
	@override String get loremIpsum => 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.';
	@override String get smallLoremIpsum => 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است.';
	@override String get language => 'زبان';
	@override String get themeMode => 'حالت قالب';
	@override String get themeColor => 'رنگ قالب';
	@override String get save => 'ذخیره';
	@override late final _StringsLoginFa login = _StringsLoginFa._(_root);
	@override String get emptyData => 'اطلاعاتی برای نمایش یافت نشد';
	@override String get throwException => 'خطا رخ داده است!';
	@override String get tryAgain => 'تلاش مجدد';
	@override String get noInternet => 'ارتباط با اینترنت برقرار نیست.';
	@override String get showMore => 'مشاهده بیشتر';
	@override String get showLess => 'مشاهده کمتر';
	@override String get enterOtpCode => 'کد تایید را وارد کنید';
	@override String otpToPhone({required Object number}) => 'ما کد تایید را به شماره ${number} ارسال کردیم.';
	@override String remainTimeOtp({required Object time}) => 'زمان مانده برای دریافت مجدد کد ${time} ثانیه';
	@override String get invalidMobile => 'شماره تلفن همراه نامعتبر است';
	@override String get limited => 'حساب کاربری شما محدود شده است';
	@override String get blocked => 'حساب کاربری شما مسدود شده است';
	@override String get invalidOtp => 'کد تایید نامعتبر است!';
	@override String get seeMore => 'مشاهده بیشتر';
	@override String get turnOfVpn => 'برای عملکر بهتر VPN خود را خاموش کنید';
	@override String version({required Object version}) => 'نسخه: ${version}';
	@override String get cancel => 'لغو';
	@override String get skip => 'رد کردن';
	@override String get enterToApp => 'ورود به اپ';
	@override String get next => 'بعدی';
	@override String get copied => 'با موفقیت کپی شد.';
	@override String textInputValidationErrorMessage({required Object field}) => 'اطلاعات فیلد ${field} معتبر نمی‌باشد.';
	@override String get notFound => 'صفحه مورد نظر یافت نشد.';
	@override String get home => 'خانه';
	@override String get about => 'درباره من';
	@override String get resume => 'رزومه';
	@override String get portfolio => 'نمونه کارها';
	@override String get services => 'خدمات';
	@override String get contact => 'ارتباط با من';
	@override String get settings => 'تنظیمات';
	@override String get myName => 'علی اسماعیلی';
	@override String get iAm => 'من ';
	@override String get developer => 'دولوپرم';
	@override String get designer => 'دیزاینرم';
	@override String get freelancer => 'فریلنسرم';
	@override String get youtuber => 'یوتیوبرم';
	@override String get aboutTitle => 'طراح و توسعه‌دهنده اپلیکیشن موبایل';
	@override String get birthday => 'تاریخ تولد';
	@override String get myBirthday => '25 اردیبهشت 1377';
	@override String get website => 'وبسایت';
	@override String get phone => 'شماره تماس';
	@override String get city => 'شهر';
	@override String get myCity => 'تهران - ایران';
	@override String get age => 'سن';
	@override String get degree => 'مدرک تحصیلی';
	@override String get myDegree => 'لیسانس';
	@override String get email => 'ایمیل';
	@override String get freelance => 'فریلنسری';
	@override String get available => 'آماده به کار';
	@override String get stats => 'آمار';
	@override String get happyClients => 'مشتری';
	@override String get projects => 'پروژه';
	@override String get hoursOfSupport => 'ساعت پشتیبانی';
	@override String get trainedStudent => 'دانشجو';
	@override String get view => 'مشاهده';
	@override String get skills => 'مهارت‌ها';
	@override String get yourName => 'نام کامل';
	@override String get YourEmail => 'ایمیل';
	@override String get subject => 'موضوع';
	@override String get message => 'پیام';
	@override String get sensMessage => 'ارسال پیام';
	@override String get address => 'آدرس';
	@override String get farsi => 'فارسی';
	@override String get english => 'انگلیسی';
	@override String get aboutMeDescription => 'توسعه دهنده با تجربه اپلیکیشن‌های موبایلی با پیشینه قوی نظری و عملی. بیش از 8 سال تجربه در توسعه اپلیکیشن‌های موبایلی با سایر زبان‌ها و بیش از 5 سال تجربه توسعه اپلیکیشن‌های موبایلی با فلاتر.';
	@override String get coreSkills => 'مهارت‌های اصلی';
	@override String get allSkills => 'همه مهارت‌ها';
}

// Path: login
class _StringsLoginFa implements _StringsLoginEn {
	_StringsLoginFa._(this._root);

	@override final _StringsFa _root; // ignore: unused_field

	// Translations
	@override String get success => 'لاگین موفق';
	@override String get fail => 'لاگین ناموفق';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _StringsEn {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return ({required Object name}) => 'Hello ${name}';
			case 'loremIpsum': return 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';
			case 'smallLoremIpsum': return 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.';
			case 'language': return 'Language';
			case 'themeMode': return 'Theme Mode';
			case 'themeColor': return 'Theme Color';
			case 'save': return 'Save';
			case 'login.success': return 'Logged in successfully';
			case 'login.fail': return 'Logged in failed';
			case 'emptyData': return 'Transaction not found';
			case 'throwException': return 'An error has occurred!';
			case 'tryAgain': return 'Try again';
			case 'noInternet': return 'No internet connection.';
			case 'showMore': return 'Show more';
			case 'showLess': return 'Show less';
			case 'enterOtpCode': return 'Please enter the OTP';
			case 'otpToPhone': return ({required Object number}) => 'We sent verification code via SMS to ${number}';
			case 'remainTimeOtp': return ({required Object time}) => 'Resend OTP code in ${time}';
			case 'invalidMobile': return 'Mobile phone number is invalid';
			case 'limited': return 'Account limited, try later';
			case 'blocked': return 'Account blocked';
			case 'invalidOtp': return 'Invalid OTP!';
			case 'seeMore': return 'See more';
			case 'turnOfVpn': return 'Turn of vpn';
			case 'version': return ({required Object version}) => 'Version: ${version}';
			case 'cancel': return 'Cancel';
			case 'skip': return 'Skip';
			case 'enterToApp': return 'EnterToApp';
			case 'next': return 'Next';
			case 'copied': return 'Copied successfully.';
			case 'textInputValidationErrorMessage': return ({required Object field}) => 'The ${field} field information is not valid.';
			case 'notFound': return 'Page Not Found';
			case 'home': return 'Home';
			case 'about': return 'About';
			case 'resume': return 'Resume';
			case 'portfolio': return 'Portfolio';
			case 'services': return 'Services';
			case 'contact': return 'Contact';
			case 'settings': return 'Settings';
			case 'myName': return 'Ali Esmailie';
			case 'iAm': return 'I\'m ';
			case 'developer': return 'Developer';
			case 'designer': return 'Designer';
			case 'freelancer': return 'Freelancer';
			case 'youtuber': return 'Youtuber';
			case 'aboutTitle': return 'Mobile application designer and developer';
			case 'birthday': return 'Birthday';
			case 'myBirthday': return '15 May 1998';
			case 'website': return 'Website';
			case 'phone': return 'Phone number';
			case 'city': return 'City';
			case 'myCity': return 'Tehran, Iran';
			case 'age': return 'Age';
			case 'degree': return 'Degree';
			case 'myDegree': return 'Bachelor';
			case 'email': return 'E-mail';
			case 'freelance': return 'Freelance';
			case 'available': return 'Available';
			case 'stats': return 'Statistics';
			case 'happyClients': return 'Happy clients';
			case 'projects': return 'Projects';
			case 'hoursOfSupport': return 'Hours of support';
			case 'trainedStudent': return 'Trained students';
			case 'view': return 'view';
			case 'skills': return 'Skills';
			case 'yourName': return 'Your Name';
			case 'YourEmail': return 'Your Email';
			case 'subject': return 'Subject';
			case 'message': return 'Message';
			case 'sensMessage': return 'Send message';
			case 'address': return 'Address';
			case 'farsi': return 'فارسی';
			case 'english': return 'English';
			case 'aboutMeDescription': return 'An experienced Mobile Developer with strong theoretical background and practical skills. Familiar with modern flutter tech stack with more than 8 years of experience in Mobile App Development and more than 5 years of experience in Google’s Flutter.';
			case 'coreSkills': return 'Core skills';
			case 'allSkills': return 'All skills';
			default: return null;
		}
	}
}

extension on _StringsFa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'hello': return ({required Object name}) => 'سلام ${name}';
			case 'loremIpsum': return 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.';
			case 'smallLoremIpsum': return 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است.';
			case 'language': return 'زبان';
			case 'themeMode': return 'حالت قالب';
			case 'themeColor': return 'رنگ قالب';
			case 'save': return 'ذخیره';
			case 'login.success': return 'لاگین موفق';
			case 'login.fail': return 'لاگین ناموفق';
			case 'emptyData': return 'اطلاعاتی برای نمایش یافت نشد';
			case 'throwException': return 'خطا رخ داده است!';
			case 'tryAgain': return 'تلاش مجدد';
			case 'noInternet': return 'ارتباط با اینترنت برقرار نیست.';
			case 'showMore': return 'مشاهده بیشتر';
			case 'showLess': return 'مشاهده کمتر';
			case 'enterOtpCode': return 'کد تایید را وارد کنید';
			case 'otpToPhone': return ({required Object number}) => 'ما کد تایید را به شماره ${number} ارسال کردیم.';
			case 'remainTimeOtp': return ({required Object time}) => 'زمان مانده برای دریافت مجدد کد ${time} ثانیه';
			case 'invalidMobile': return 'شماره تلفن همراه نامعتبر است';
			case 'limited': return 'حساب کاربری شما محدود شده است';
			case 'blocked': return 'حساب کاربری شما مسدود شده است';
			case 'invalidOtp': return 'کد تایید نامعتبر است!';
			case 'seeMore': return 'مشاهده بیشتر';
			case 'turnOfVpn': return 'برای عملکر بهتر VPN خود را خاموش کنید';
			case 'version': return ({required Object version}) => 'نسخه: ${version}';
			case 'cancel': return 'لغو';
			case 'skip': return 'رد کردن';
			case 'enterToApp': return 'ورود به اپ';
			case 'next': return 'بعدی';
			case 'copied': return 'با موفقیت کپی شد.';
			case 'textInputValidationErrorMessage': return ({required Object field}) => 'اطلاعات فیلد ${field} معتبر نمی‌باشد.';
			case 'notFound': return 'صفحه مورد نظر یافت نشد.';
			case 'home': return 'خانه';
			case 'about': return 'درباره من';
			case 'resume': return 'رزومه';
			case 'portfolio': return 'نمونه کارها';
			case 'services': return 'خدمات';
			case 'contact': return 'ارتباط با من';
			case 'settings': return 'تنظیمات';
			case 'myName': return 'علی اسماعیلی';
			case 'iAm': return 'من ';
			case 'developer': return 'دولوپرم';
			case 'designer': return 'دیزاینرم';
			case 'freelancer': return 'فریلنسرم';
			case 'youtuber': return 'یوتیوبرم';
			case 'aboutTitle': return 'طراح و توسعه‌دهنده اپلیکیشن موبایل';
			case 'birthday': return 'تاریخ تولد';
			case 'myBirthday': return '25 اردیبهشت 1377';
			case 'website': return 'وبسایت';
			case 'phone': return 'شماره تماس';
			case 'city': return 'شهر';
			case 'myCity': return 'تهران - ایران';
			case 'age': return 'سن';
			case 'degree': return 'مدرک تحصیلی';
			case 'myDegree': return 'لیسانس';
			case 'email': return 'ایمیل';
			case 'freelance': return 'فریلنسری';
			case 'available': return 'آماده به کار';
			case 'stats': return 'آمار';
			case 'happyClients': return 'مشتری';
			case 'projects': return 'پروژه';
			case 'hoursOfSupport': return 'ساعت پشتیبانی';
			case 'trainedStudent': return 'دانشجو';
			case 'view': return 'مشاهده';
			case 'skills': return 'مهارت‌ها';
			case 'yourName': return 'نام کامل';
			case 'YourEmail': return 'ایمیل';
			case 'subject': return 'موضوع';
			case 'message': return 'پیام';
			case 'sensMessage': return 'ارسال پیام';
			case 'address': return 'آدرس';
			case 'farsi': return 'فارسی';
			case 'english': return 'انگلیسی';
			case 'aboutMeDescription': return 'توسعه دهنده با تجربه اپلیکیشن‌های موبایلی با پیشینه قوی نظری و عملی. بیش از 8 سال تجربه در توسعه اپلیکیشن‌های موبایلی با سایر زبان‌ها و بیش از 5 سال تجربه توسعه اپلیکیشن‌های موبایلی با فلاتر.';
			case 'coreSkills': return 'مهارت‌های اصلی';
			case 'allSkills': return 'همه مهارت‌ها';
			default: return null;
		}
	}
}
