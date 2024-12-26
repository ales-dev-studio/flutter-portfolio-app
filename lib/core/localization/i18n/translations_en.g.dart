part of 'translations.g.dart';

// Path: <root>
class _TranslationsEn implements BaseTranslations<AppLocale, _TranslationsEn> {

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
	@override final TranslationMetadata<AppLocale, _TranslationsEn> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final _TranslationsEn _root = this; // ignore: unused_field

	// Translations
	String hello({required Object name}) => 'Hello ${name}';
	String get loremIpsum => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.';
	String get smallLoremIpsum => 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.';
	String get language => 'Language';
	String get themeMode => 'Theme Mode';
	String get themeColor => 'Theme Color';
	String get save => 'Save';
	late final _TranslationsLoginEn login = _TranslationsLoginEn._(_root);
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
class _TranslationsLoginEn {
	_TranslationsLoginEn._(this._root);

	final _TranslationsEn _root; // ignore: unused_field

	// Translations
	String get success => 'Logged in successfully';
	String get fail => 'Logged in failed';
}
