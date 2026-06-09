// lib/core/constants/app_constants.dart
class AppConstants {
  static const String appName = 'Plant Care Assistant';
  static const String appVersion = '1.0.0';
  static const int onboardingPages = 3;
  static const double defaultPadding = 16.0;
  static const double defaultRadius = 12.0;
  static const Duration animationDuration = Duration(milliseconds: 300);
}

// lib/core/constants/api_constants.dart
class ApiConstants {
  // TODO: Backend integration
  static const String baseUrl = 'https://api.plantcare.com/v1';
  static const String plantIdentification = '/identify';
  static const String diseaseDetection = '/diagnose';
}