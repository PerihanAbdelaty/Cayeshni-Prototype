import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
  }) =>
      [enText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // loginPage
  {
    'o07j3mgv': {
      'en': 'Welcome back',
      'ar': 'البدء',
    },
    'fzxvw3mu': {
      'en': 'Login to access your account below or  sign up to create one.',
      'ar': 'قم بإنشاء حسابك أدناه.',
    },
    'a9j78va9': {
      'en': 'ID Number',
      'ar': 'عنوان البريد الالكترونى',
    },
    'i7f18cve': {
      'en': 'Enter your ID number...',
      'ar': 'أدخل بريدك الإلكتروني ...',
    },
    'wztjmbn8': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    'lw1jpm1f': {
      'en': 'Enter your password...',
      'ar': 'ادخل رقمك السري...',
    },
    'qbmoi1av': {
      'en': 'Login',
      'ar': 'تسجيل الدخول',
    },
    'i96tz5ob': {
      'en': 'Forgot Password?',
      'ar': 'هل نسيت كلمة السر؟',
    },
    'cjqb8ial': {
      'en': 'Don\'t have an account?',
      'ar': 'ليس لديك حساب؟',
    },
    'a0iimirx': {
      'en': 'Sign Up',
      'ar': 'ليس لديك حساب؟',
    },
    '2bb3vct7': {
      'en': 'Home',
      'ar': 'مسكن',
    },
  },
  // registerAccount
  {
    'gpokmd81': {
      'en': 'Get Started',
      'ar': 'البدء',
    },
    'oitrrwgg': {
      'en': 'Create your account below.',
      'ar': 'قم بإنشاء حسابك أدناه.',
    },
    'gcwdqm4g': {
      'en': 'First Name',
      'ar': 'عنوان البريد الالكترونى',
    },
    'iam0xgwx': {
      'en': 'Enter your first name...',
      'ar': 'أدخل بريدك الإلكتروني ...',
    },
    'j3r1j8bh': {
      'en': 'Last Name',
      'ar': '',
    },
    'o1bgpftc': {
      'en': 'Enter your last name...',
      'ar': '',
    },
    'bcv5d420': {
      'en': 'ID Number',
      'ar': '',
    },
    'a4dtlycx': {
      'en': 'Enter your ID number...',
      'ar': '',
    },
    '5kmjfwsk': {
      'en': 'Create Account',
      'ar': 'إنشاء حساب',
    },
    '3twynvfz': {
      'en': 'Login',
      'ar': 'هل لديك حساب؟',
    },
    '9ssznj0g': {
      'en': 'Already have an account?',
      'ar': 'هل لديك حساب؟',
    },
    'momge5oj': {
      'en': 'Home',
      'ar': 'مسكن',
    },
  },
  // completeProfile
  {
    '9o9kjhty': {
      'en': 'Complete Profile',
      'ar': 'تغيير كلمة المرور',
    },
    'r6npjsue': {
      'en': 'Upload a photo for us to easily identify you.',
      'ar': 'قم بتحميل صورة لنا للتعرف عليك بسهولة.',
    },
    'iyapwd4v': {
      'en': 'Upload ID Front',
      'ar': '',
    },
    '1tufxn8b': {
      'en': 'Upload ID Back',
      'ar': '',
    },
    '6mr2se4f': {
      'en': 'Upload Services Receipt',
      'ar': '',
    },
    'hbhd3bdt': {
      'en': 'Complete Profile',
      'ar': 'الملف الشخصي الكامل',
    },
    '1eac148w': {
      'en': 'Field is required',
      'ar': '',
    },
    'ew7dbn3s': {
      'en': 'Field is required',
      'ar': '',
    },
    'jhhlgzk5': {
      'en': 'Field is required',
      'ar': '',
    },
    '4k3jnl38': {
      'en': 'Home',
      'ar': 'مسكن',
    },
  },
  // forgotPassword
  {
    'g416xg9f': {
      'en': 'Forgot Password',
      'ar': 'هل نسيت كلمة السر',
    },
    'xaiad71o': {
      'en':
          'Enter the email associated with your account and we will send you a verification code.',
      'ar': 'أدخل البريد الإلكتروني المرتبط بحسابك وسنرسل لك رمز التحقق.',
    },
    'u4nuk910': {
      'en': 'Email Address',
      'ar': 'عنوان البريد الالكترونى',
    },
    '37kotxi0': {
      'en': 'Enter your email...',
      'ar': 'أدخل بريدك الإلكتروني ...',
    },
    'hiwpaze1': {
      'en': 'Send Reset Link',
      'ar': 'أرسل رابط إعادة التعيين',
    },
    '598b8d3m': {
      'en': 'Home',
      'ar': 'مسكن',
    },
  },
  // onboarding
  {
    'i8hl2uua': {
      'en': 'Track Payments',
      'ar': 'إنشاء الميزانيات',
    },
    'hxtwax0y': {
      'en':
          'Create budgets that you can tie transactions too in order for easy tracking.',
      'ar':
          'قم بإنشاء ميزانيات يمكنك ربط المعاملات بها أيضًا من أجل التتبع السهل.',
    },
    'mjy3ljln': {
      'en': 'Transactions',
      'ar': 'تتبع الإنفاق',
    },
    'uf9k1spp': {
      'en':
          'Easily add transactions and associate them with budgets that have been created.',
      'ar': 'أضف المعاملات بسهولة وربطها بالميزانيات التي تم إنشاؤها.',
    },
    '9c4outzf': {
      'en': 'Pay & Withdraw',
      'ar': 'تحليل الميزانية',
    },
    'q30ina4f': {
      'en': 'Know where your budgets are and how they can be adjusted.',
      'ar': 'تعرف على مكان ميزانياتك وكيف يمكن تعديلها.',
    },
    'ypt7b97g': {
      'en': 'Let\'s Go',
      'ar': 'إنشاء ميزانيتك',
    },
    'oo0kk9qe': {
      'en': 'Home',
      'ar': 'مسكن',
    },
  },
  // eWallet
  {
    'xn2so8km': {
      'en': 'My Wallet',
      'ar': 'بطاقتي',
    },
    '6t7n9ugd': {
      'en': 'Balance',
      'ar': 'الرصيد',
    },
    'h3086ma4': {
      'en': '\$7,630',
      'ar': '7630 دولارًا',
    },
    'lr97k2rc': {
      'en': '**** 0149',
      'ar': '**** 0149',
    },
    'l9racj60': {
      'en': '05/25',
      'ar': '05/25',
    },
    '9b0j67se': {
      'en': 'Available Amount',
      'ar': 'دخل',
    },
    'axrvkhrv': {
      'en': '+\$10,000',
      'ar': '+ 12402 دولار',
    },
    'mggh8wu7': {
      'en': 'Amount to Pay',
      'ar': 'الإنفاق',
    },
    'c5bszisf': {
      'en': '-\$5,000',
      'ar': '- 8،392 دولارًا',
    },
    'yet7zk5d': {
      'en': 'Quick Service',
      'ar': 'خدمة سريعة',
    },
    '8bnd6lco': {
      'en': 'Pay Installment',
      'ar': 'تحويل',
    },
    'roobc02h': {
      'en': 'Withdraw',
      'ar': 'بطاقة وقفة',
    },
    '27pb7ji4': {
      'en': 'Transaction',
      'ar': 'عملية',
    },
    'nd57lnti': {
      'en': 'Transaction',
      'ar': '',
    },
    'xs4cn7uk': {
      'en': 'Income',
      'ar': 'دخل',
    },
    'hfynfrek': {
      'en': '\$50.00',
      'ar': '',
    },
    'evhprbi0': {
      'en': 'Hello World',
      'ar': '',
    },
    'm8rhanhc': {
      'en': 'Wallet',
      'ar': '•',
    },
  },
  // profilePage
  {
    'i16gr6pz': {
      'en': 'Andrew',
      'ar': '',
    },
    'f1bvbey3': {
      'en': 'My Account',
      'ar': 'حسابي',
    },
    'i61y9ibx': {
      'en': 'Edit Profile',
      'ar': 'تعديل الملف الشخصي',
    },
    '03k0vw86': {
      'en': 'Change Password',
      'ar': 'تغيير كلمة المرور',
    },
    '6w6wv95p': {
      'en': 'Notification Settings',
      'ar': 'إعدادات الإشعار',
    },
    'eojlfs66': {
      'en': 'Privacy Policy',
      'ar': 'سياسة الخصوصية',
    },
    'ytdu9ske': {
      'en': 'Dark Mode',
      'ar': '',
    },
    '7q45aijh': {
      'en': '',
      'ar': '',
    },
    '8d386226': {
      'en': 'Light Mode',
      'ar': '',
    },
    '2ll42t1u': {
      'en': 'Dark Mode',
      'ar': '',
    },
    '8srr2k0j': {
      'en': 'Profile',
      'ar': '•',
    },
  },
  // transferComplete
  {
    'xf8d4sm8': {
      'en': 'Transfer Complete',
      'ar': 'نقل كامل',
    },
    'iq9jjji8': {
      'en':
          'Great work, you successfully transferred funds. It may take a few days for the funds to leave your account.',
      'ar':
          'عمل رائع ، لقد قمت بتحويل الأموال بنجاح. قد يستغرق خروج الأموال من حسابك بضعة أيام.',
    },
    'wrbg19ed': {
      'en': 'Okay',
      'ar': 'تمام',
    },
    'ndkybnrt': {
      'en': 'Home',
      'ar': 'مسكن',
    },
  },
  // editProfile
  {
    '4rzqov3y': {
      'en': 'Edit Profile',
      'ar': 'تعديل الملف الشخصي',
    },
    'zoxan2gi': {
      'en': 'Change Photo',
      'ar': 'غير الصوره',
    },
    '3p9y21e2': {
      'en': 'Your Name',
      'ar': 'اسمك',
    },
    'dw9gmjdc': {
      'en': 'Please enter your name...',
      'ar': 'من فضلك أدخل رقما صالحا...',
    },
    'z4fstn5l': {
      'en': 'Email Address',
      'ar': 'عنوان البريد الالكترونى',
    },
    'jozgvwyg': {
      'en': 'Please enter your email...',
      'ar': 'بريدك الالكتروني',
    },
    '8h1cjk5a': {
      'en': 'Your Age',
      'ar': 'عمرك',
    },
    '5v21r6gb': {
      'en': 'Please enter your age...',
      'ar': 'أي 34',
    },
    'ir7x6nes': {
      'en': 'Mr.',
      'ar': '',
    },
    'q45bavod': {
      'en': 'Miss',
      'ar': '',
    },
    'vebpttd8': {
      'en': 'Mrs.',
      'ar': '',
    },
    'f2xagbrg': {
      'en': 'Please select your Tiitle...',
      'ar': '',
    },
    'cu8foj5u': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'i6edcl52': {
      'en': 'Save Changes',
      'ar': 'حفظ التغييرات',
    },
    '59naq8ur': {
      'en': 'Home',
      'ar': 'مسكن',
    },
  },
  // changePassword
  {
    'l5iggwaz': {
      'en': 'Change Password',
      'ar': 'تغيير كلمة المرور',
    },
    '2b97u8y5': {
      'en':
          'Enter the email associated with your account and we will send you link to reset your password.',
      'ar':
          'أدخل البريد الإلكتروني المرتبط بحسابك وسنرسل لك رابطًا لإعادة تعيين كلمة المرور الخاصة بك.',
    },
    'ajy1c3r9': {
      'en': 'Email Address',
      'ar': 'عنوان البريد الالكترونى',
    },
    'hsqfoxya': {
      'en': 'Enter your email...',
      'ar': 'أدخل بريدك الإلكتروني ...',
    },
    'if4pz6lm': {
      'en': 'Send Reset Link',
      'ar': 'أرسل رابط إعادة التعيين',
    },
    '5tvk9lv0': {
      'en': 'Home',
      'ar': 'مسكن',
    },
  },
  // notificationsSettings
  {
    'sc4ff4ce': {
      'en': 'Notifications',
      'ar': 'إشعارات',
    },
    'r72zvrv5': {
      'en':
          'Choose what notifcations you want to recieve below and we will update the settings.',
      'ar': 'اختر الإشعارات التي تريد تلقيها أدناه وسنقوم بتحديث الإعدادات.',
    },
    'gjygkr0n': {
      'en': 'Push Notifications',
      'ar': 'دفع الإخطارات',
    },
    '3y3yhxbk': {
      'en':
          'Receive Push notifications from our application on a semi regular basis.',
      'ar': 'تلقي إشعارات من تطبيقنا على أساس شبه منتظم.',
    },
    '1ytebj35': {
      'en': 'Email Notifications',
      'ar': 'اشعارات البريد الالكتروني',
    },
    '9lvh5nst': {
      'en':
          'Receive email notifications from our marketing team about new features.',
      'ar':
          'تلقي إشعارات البريد الإلكتروني من فريق التسويق لدينا حول الميزات الجديدة.',
    },
    '69d2j74u': {
      'en': 'Location Services',
      'ar': 'خدمات الموقع',
    },
    '3k8cuv0d': {
      'en':
          'Allow us to track your location, this helps keep track of spending and keeps you safe.',
      'ar':
          'اسمح لنا بتتبع موقعك ، فهذا يساعد على تتبع الإنفاق ويحافظ على سلامتك.',
    },
    'isgrgbfs': {
      'en': 'Save Changes',
      'ar': 'حفظ التغييرات',
    },
    'a96mlyeh': {
      'en': 'Home',
      'ar': 'مسكن',
    },
  },
  // privacyPolicy
  {
    'alczfiiy': {
      'en': 'Privacy Policy',
      'ar': 'سياسة الخصوصية',
    },
    'fvsfg5on': {
      'en': 'How we use your data',
      'ar': 'كيف نستخدم بياناتك',
    },
    'nbiyrnzl': {
      'en':
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Accumsan sit amet nulla facilisi morbi tempus. Non consectetur a erat nam. Donec ultrices tincidunt arcu non sodales. Velit sed ullamcorper morbi tincidunt. Molestie a iaculis at erat pellentesque adipiscing. Mauris nunc congue nisi vitae. Nisl tincidunt eget nullam non nisi. Faucibus nisl tincidunt eget nullam non nisi est. Leo duis ut diam quam nulla.\n\nEuismod lacinia at quis risus sed vulputate odio. Velit dignissim sodales ut eu sem integer vitae justo eget. Risus feugiat in ante metus. Leo vel orci porta non pulvinar neque laoreet suspendisse interdum. Suscipit tellus mauris a diam maecenas sed enim ut sem. Sem integer vitae justo eget magna fermentum iaculis eu. Lacinia at quis risus sed. Faucibus purus in massa tempor. Leo a diam sollicitudin tempor id eu. Nisi scelerisque eu ultrices vitae auctor. Vulputate dignissim suspendisse in est ante in. Enim neque volutpat ac tincidunt vitae semper quis. Ipsum dolor sit amet consectetur adipiscing elit.\n\nEt malesuada fames ac turpis egestas maecenas pharetra convallis. Sed sed risus pretium quam vulputate. Elit pellentesque habitant morbi tristique senectus et. Viverra maecenas accumsan lacus vel facilisis volutpat est. Sit amet mattis vulputate enim nulla. Nisi lacus sed viverra tellus in hac habitasse. Sit amet risus nullam eget felis eget nunc lobortis. Pretium lectus quam id leo in vitae. Adipiscing diam donec adipiscing tristique. Commodo sed egestas egestas fringilla. Ipsum dolor sit amet consectetur adipiscing. Ipsum dolor sit amet consectetur adipiscing elit pellentesque habitant morbi. Montes nascetur ridiculus mus mauris. Ut etiam sit amet nisl purus in. Arcu ac tortor dignissim convallis aenean et tortor at. Ornare suspendisse sed nisi lacus sed viverra.',
      'ar':
          'Lorem ipsum dolor sit amet، consectetur adipiscing elit، sed do eiusmod tempor incidunt ut labore et dolore magna aliqua. Accumsan sit amet nulla facilisi morbi tempus. غير consectetur a erat nam. دونك ألتريسيس تينسيدونت قوس غير مخادع. Velit sed ullamcorper morbi tincidunt. Molestie a iaculis في erat pellentesque adipiscing. موريس نونك كونيج سيرة ذاتية. Nisl tincidunt eget nullam non nisi. Faucibus nisl tincidunt eget nullam non nisi est. Leo duis ut diam quam nulla. Euismod lacinia في quis risus sed vulputate odio. فيليت كريمينسيم sodales ut eu sem سيرة ذاتية صحيحة justo eget. Risus feugiat في ما قبل ميتوس. Leo vel orci porta non pulvinar neque laoreet suspension interdum. Suscipit Tellus mauris a Diam Maecenas Sed enim ut sem. SEM السيرة الذاتية الصحيحة justo eget magna fermentum iaculis eu. لاسينيا في quis risus sed. Faucibus purus في ماسا مؤقت. ليو بقطر سوليتودين معرف مؤقت الاتحاد الأوروبي. Nisi scelerisque eu ultrices السيرة الذاتية موصل. Vulputate كريم معلق في وقت مبكر. Enim neque volutpat ac tincidunt vitae semper quis. Ipsum dolor sit amet consectetur adipiscing elit. Et malesuada fames ac turpis egestas maecenas pharetra convallis. Sed sed risus Préium quam vulputate. Elit pellentesque موطن morbi tristique senectus et. Viverra maecenas accumsan lacus vel facilisis volutpat est. sit amet mattis vulputate enim nulla. Nisi lacus sed viverra Tellus في العادة السيئة. اجلس أميت ريسوس نولام إيجيت فيليس إيجيت نونك لوبورتيز. Pretium lectus quam id leo in vitae. Adipiscing Diam donec adipiscing tristique. كومودو سيد egestas egestas fringilla. Ipsum dolor sit amet consectetur adipiscing. Ipsum dolor sit amet consectetur adipiscing النخبة pellentesque المعيشية morbi. مونتيس ناسيتور ريديكولوس موس موريس. Ut etiam sit amet nisl purus in. Arcu ac Ornare suspendisse sed nisi lacus sed viverra.',
    },
    'oks4x95o': {
      'en': 'Home',
      'ar': 'مسكن',
    },
  },
  // homePage_active
  {
    'ucqlrrlk': {
      'en': 'Welcome,',
      'ar': 'مرحبا،',
    },
    'jta9zpij': {
      'en': 'Andrew',
      'ar': '',
    },
    'ztd1t2d9': {
      'en': 'Approved Limit',
      'ar': 'الرواتب المستحقة',
    },
    '50qwa4ly': {
      'en': '\$10,000',
      'ar': '12245 دولارًا',
    },
    '1mrc766t': {
      'en': 'Active Plan',
      'ar': 'تاريخ الخصم',
    },
    '47f5f6ol': {
      'en': '2 Months - 10K',
      'ar': '31 أغسطس 2021',
    },
    'p7vqvz3q': {
      'en': '4 Days Left!',
      'ar': 'باقي 4 ايام',
    },
    '30yef7fj': {
      'en': 'Paid Amount',
      'ar': 'الرواتب المستحقة',
    },
    'zrx9e6tv': {
      'en': '\$5,000',
      'ar': '12245 دولارًا',
    },
    '1cjqanzg': {
      'en': 'Cycle Start Date',
      'ar': 'تاريخ الخصم',
    },
    '726vrs60': {
      'en': 'Mar 15, 2024',
      'ar': '31 أغسطس 2021',
    },
    '4dgbx46t': {
      'en': '4 Days Left',
      'ar': 'باقي 4 ايام',
    },
    'n87v5tth': {
      'en': 'Next Payment',
      'ar': 'ميزانية التسويق',
    },
    'l5pw5c8c': {
      'en': '\$5,000',
      'ar': '4000 دولار',
    },
    '7i0a44qa': {
      'en': 'Due Date',
      'ar': 'إجمال الصرف',
    },
    '9a2ya1la': {
      'en': 'May 15, 2024',
      'ar': '3،402 دولار',
    },
    'n1o498d9': {
      'en': '4 Days Left',
      'ar': 'باقي 4 ايام',
    },
    'nb29ps2o': {
      'en': '1 New Alert',
      'ar': '1 تنبيه جديد',
    },
    'vgt9s153': {
      'en': 'View Now',
      'ar': 'عرض الآن',
    },
    'pnvkw3b7': {
      'en':
          'We noticed a small charge that is out of character of this account, please review.',
      'ar': 'لقد لاحظنا تكلفة صغيرة خارجة عن طبيعة هذا الحساب ، يرجى المراجعة.',
    },
    'c805m53i': {
      'en': 'Home',
      'ar': 'مسكن',
    },
  },
  // paymentPlan_new
  {
    'ijv1qzpw': {
      'en': 'Payment Plans',
      'ar': 'البدء',
    },
    'eqeyryg3': {
      'en':
          'Please check our plans below and choose the one most suitable for you',
      'ar': 'قم بإنشاء حسابك أدناه.',
    },
    'a86mwddx': {
      'en': 'Duration',
      'ar': 'ميزانية التسويق',
    },
    '6c2o39hz': {
      'en': '1 Month',
      'ar': '3000 دولار',
    },
    '5subrra4': {
      'en': 'Amount',
      'ar': 'إجمال الصرف',
    },
    '0wtm2m51': {
      'en': '\$5,000 / \$10,000',
      'ar': '2،502 دولار',
    },
    's26nbvqz': {
      'en': 'Duration',
      'ar': 'ميزانية التسويق',
    },
    'gwq6wv1f': {
      'en': '2 Months',
      'ar': '3000 دولار',
    },
    'fjxd97nq': {
      'en': 'Amount',
      'ar': 'إجمال الصرف',
    },
    'me4ud9yq': {
      'en': '\$10,000',
      'ar': '2،502 دولار',
    },
    'wdr5fmum': {
      'en': 'Duration',
      'ar': 'ميزانية التسويق',
    },
    'jc2xb6qz': {
      'en': '3 Months',
      'ar': '3000 دولار',
    },
    'w8koavby': {
      'en': 'Amount',
      'ar': 'إجمال الصرف',
    },
    'l0aj1zgh': {
      'en': '\$15,000',
      'ar': '2،502 دولار',
    },
    '8hu2v2im': {
      'en': 'Plans',
      'ar': '•',
    },
  },
  // paymentPlan_exist
  {
    'q8wvwd9t': {
      'en': 'Welcome,',
      'ar': 'مرحبا،',
    },
    'l4pypxdu': {
      'en': 'Andrew',
      'ar': '',
    },
    'agz8dd6q': {
      'en': 'Current  Plan : 2 Months - 10K',
      'ar': 'البدء',
    },
    'zrjjoxi1': {
      'en': 'Cycle Start Date:',
      'ar': 'مرحبا،',
    },
    'icwcxd4c': {
      'en': '[cycle_start_date]',
      'ar': '',
    },
    '149ozcme': {
      'en': '1st Payment Date:',
      'ar': 'مرحبا،',
    },
    'lt2fg1d3': {
      'en': '[first_payment_date]',
      'ar': '',
    },
    'tmphypbm': {
      'en': 'Payment Amount:',
      'ar': 'مرحبا،',
    },
    'kx9mzf2i': {
      'en': '[payment_amount]',
      'ar': '',
    },
    'mvllhgr3': {
      'en': '2nd Payment Date:',
      'ar': 'مرحبا،',
    },
    's9qer85t': {
      'en': '[2nd_payment_date]',
      'ar': '',
    },
    '4hbxabsk': {
      'en': 'Payment Amount:',
      'ar': 'مرحبا،',
    },
    'nciwi95n': {
      'en': '[payment_amount]',
      'ar': '',
    },
    '2y2dq5nu': {
      'en': '3rd Payment Date:',
      'ar': 'مرحبا،',
    },
    'su8s83zp': {
      'en': '[third_payment_date]',
      'ar': '',
    },
    '0w6mrkrd': {
      'en': 'Payment Amount:',
      'ar': 'مرحبا،',
    },
    'ft3zaen2': {
      'en': '[payment_amount]',
      'ar': '',
    },
    'iqyx6qxd': {
      'en': 'My Plan',
      'ar': '•',
    },
  },
  // Miscellaneous
  {
    'lzyb73wy': {
      'en': '',
      'ar': '',
    },
    'kx9cdks4': {
      'en': '',
      'ar': '',
    },
    'efvtwj7k': {
      'en': '',
      'ar': '',
    },
    'ec5hfa1e': {
      'en': '',
      'ar': '',
    },
    'q5ljwvfo': {
      'en': '',
      'ar': '',
    },
    'j4rmwb3h': {
      'en': '',
      'ar': '',
    },
    '6ah1b18f': {
      'en': '',
      'ar': '',
    },
    '2kos1hen': {
      'en': '',
      'ar': '',
    },
    '8y1mbk1k': {
      'en': '',
      'ar': '',
    },
    'bz4khorp': {
      'en': '',
      'ar': '',
    },
    '9uc65w44': {
      'en': '',
      'ar': '',
    },
    'o3mnprt4': {
      'en': '',
      'ar': '',
    },
    '7o7by63c': {
      'en': '',
      'ar': '',
    },
    'aox3s4fb': {
      'en': '',
      'ar': '',
    },
    'l8hv5a7z': {
      'en': '',
      'ar': '',
    },
    '4pjwb70a': {
      'en': '',
      'ar': '',
    },
    '0xlokf4y': {
      'en': '',
      'ar': '',
    },
    '8twlwiwt': {
      'en': '',
      'ar': '',
    },
    'y6ome9es': {
      'en': '',
      'ar': '',
    },
    'c8rhokye': {
      'en': '',
      'ar': '',
    },
    'lixien8z': {
      'en': '',
      'ar': '',
    },
    'vt41yoba': {
      'en': '',
      'ar': '',
    },
    '3i8s9x8m': {
      'en': '',
      'ar': '',
    },
    '65n9ss4p': {
      'en': '',
      'ar': '',
    },
    't4xzlq9q': {
      'en': '',
      'ar': '',
    },
    '513nj4m0': {
      'en': '',
      'ar': '',
    },
    'a1jxfgju': {
      'en': '',
      'ar': '',
    },
  },
].reduce((a, b) => a..addAll(b));
