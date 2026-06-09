// lib/localization/app_localizations.dart
import 'package:flutter/material.dart';

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static const LocalizationsDelegate<AppLocalizations> delegate =
  _AppLocalizationsDelegate();

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static final Map<String, Map<String, String>> _localizedValues = {
    'en': {
      'app_name': 'Plant Care Assistant',
      'welcome': 'Welcome Back!',
      'sign_in': 'Sign In',
      'sign_up': 'Sign Up',
      'email': 'Email',
      'password': 'Password',
      'forgot_password': 'Forgot Password?',
      'remember_me': 'Remember me',
      'no_account': "Don't have an account? ",
      'skip': 'Skip',
      'next': 'Next',
      'get_started': 'Get Started',
      'home': 'Home',
      'scan': 'Scan',
      'history': 'History',
      'community': 'Community',
      'profile': 'Profile',
      'settings': 'Settings',
      'search_plants': 'Search plants, diseases...',
      'recent_scans': 'Recent Scans',
      'see_all': 'See All',
      'plant_identification': 'Plant Identification',
      'disease_detection': 'Disease Detection',
      'plant_care_assistant': 'Plant Care Assistant',
      'analyzing': 'Analyzing plant image...',
      'identifying': 'Identifying species...',
      'checking_diseases': 'Checking for diseases...',
      'generating_recommendations': 'Generating care recommendations...',
      'finalizing': 'Finalizing results...',
      'ai_analysis': 'AI Powered Analysis',
      'health_score': 'Health',
      'confidence': 'Match',
      'overview': 'Overview',
      'disease_details': 'Disease Details',
      'causes': 'Causes',
      'treatments': 'Treatments',
      'prevention': 'Prevention',
      'care_guide': 'Care Guide',
      'watering': 'Watering',
      'sunlight': 'Sunlight',
      'temperature': 'Temperature',
      'fertilization': 'Fertilization',
      'notes': 'Notes',
      'logout': 'Logout',
      'dark_mode': 'Dark Mode',
      'language': 'Language',
      'notifications': 'Notifications',
      'privacy': 'Privacy Policy',
      'terms': 'Terms of Service',
      'about': 'About',
      'version': 'Version',
      'rate_app': 'Rate the App',
      'share': 'Share with Friends',
      'select_language': 'Select Language',
      'english': 'English',
      'persian': 'Persian',
    },
    'fa': {
      'app_name': 'دستیار مراقبت از گیاه',
      'welcome': 'خوش آمدید!',
      'sign_in': 'ورود',
      'sign_up': 'ثبت نام',
      'email': 'ایمیل',
      'password': 'رمز عبور',
      'forgot_password': 'رمز عبور را فراموش کرده‌اید؟',
      'remember_me': 'مرا به خاطر بسپار',
      'no_account': 'حساب کاربری ندارید؟ ',
      'skip': 'رد کردن',
      'next': 'بعدی',
      'get_started': 'شروع کنید',
      'home': 'خانه',
      'scan': 'اسکن',
      'history': 'تاریخچه',
      'community': 'انجمن',
      'profile': 'پروفایل',
      'settings': 'تنظیمات',
      'search_plants': 'جستجوی گیاهان، بیماری‌ها...',
      'recent_scans': 'اسکن‌های اخیر',
      'see_all': 'مشاهده همه',
      'plant_identification': 'شناسایی گیاه',
      'disease_detection': 'تشخیص بیماری',
      'plant_care_assistant': 'دستیار مراقبت از گیاه',
      'analyzing': 'در حال تحلیل تصویر گیاه...',
      'identifying': 'در حال شناسایی گونه...',
      'checking_diseases': 'در حال بررسی بیماری‌ها...',
      'generating_recommendations': 'در حال تولید توصیه‌های مراقبتی...',
      'finalizing': 'در حال نهایی کردن نتایج...',
      'ai_analysis': 'تحلیل با هوش مصنوعی',
      'health_score': 'سلامت',
      'confidence': 'تطابق',
      'overview': 'بررسی کلی',
      'disease_details': 'جزئیات بیماری',
      'causes': 'علل',
      'treatments': 'درمان‌ها',
      'prevention': 'پیشگیری',
      'care_guide': 'راهنمای مراقبت',
      'watering': 'آبیاری',
      'sunlight': 'نور خورشید',
      'temperature': 'دما',
      'fertilization': 'کوددهی',
      'notes': 'یادداشت‌ها',
      'logout': 'خروج',
      'dark_mode': 'حالت تاریک',
      'language': 'زبان',
      'notifications': 'اعلان‌ها',
      'privacy': 'سیاست حفظ حریم خصوصی',
      'terms': 'شرایط استفاده',
      'about': 'درباره',
      'version': 'نسخه',
      'rate_app': 'امتیاز به برنامه',
      'share': 'اشتراک‌گذاری با دوستان',
      'select_language': 'انتخاب زبان',
      'english': 'انگلیسی',
      'persian': 'فارسی',
    },
  };

  String translate(String key) {
    return _localizedValues[locale.languageCode]?[key] ?? key;
  }
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'fa'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    return AppLocalizations(locale);
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) {
    return false;
  }
}