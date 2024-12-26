part of 'translations.g.dart';

// Path: <root>
class _TranslationsFa implements _TranslationsEn {

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	_TranslationsFa.build({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
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
	@override final TranslationMetadata<AppLocale, _TranslationsEn> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	@override late final _TranslationsFa _root = this; // ignore: unused_field

	// Translations
	@override String hello({required Object name}) => 'سلام ${name}';
	@override String get loremIpsum => 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است. چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است و برای شرایط فعلی تکنولوژی مورد نیاز و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد. کتابهای زیادی در شصت و سه درصد گذشته، حال و آینده شناخت فراوان جامعه و متخصصان را می طلبد تا با نرم افزارها شناخت بیشتری را برای طراحان رایانه ای علی الخصوص طراحان خلاقی و فرهنگ پیشرو در زبان فارسی ایجاد کرد. در این صورت می توان امید داشت که تمام و دشواری موجود در ارائه راهکارها و شرایط سخت تایپ به پایان رسد وزمان مورد نیاز شامل حروفچینی دستاوردهای اصلی و جوابگوی سوالات پیوسته اهل دنیای موجود طراحی اساسا مورد استفاده قرار گیرد.';
	@override String get smallLoremIpsum => 'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ و با استفاده از طراحان گرافیک است.';
	@override String get language => 'زبان';
	@override String get themeMode => 'حالت قالب';
	@override String get themeColor => 'رنگ قالب';
	@override String get save => 'ذخیره';
	@override late final _TranslationsLoginFa login = _TranslationsLoginFa._(_root);
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
class _TranslationsLoginFa implements _TranslationsLoginEn {
	_TranslationsLoginFa._(this._root);

	@override final _TranslationsFa _root; // ignore: unused_field

	// Translations
	@override String get success => 'لاگین موفق';
	@override String get fail => 'لاگین ناموفق';
}
