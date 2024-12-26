part of 'translations.g.dart';

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.

extension on _TranslationsEn {
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

extension on _TranslationsFa {
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
