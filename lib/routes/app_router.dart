// lib/routes/app_router.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:plant_care_app/routes/route_names.dart';
import 'package:plant_care_app/features/auth/presentation/pages/splash_page.dart';
import 'package:plant_care_app/features/auth/presentation/pages/onboarding_page.dart';
import 'package:plant_care_app/features/auth/presentation/pages/login_page.dart';
import 'package:plant_care_app/features/auth/presentation/pages/register_page.dart';
import 'package:plant_care_app/features/home/presentation/pages/home_page.dart';
import 'package:plant_care_app/features/scan/presentation/pages/scan_page.dart';
import 'package:plant_care_app/features/scan/presentation/pages/processing_page.dart';
import 'package:plant_care_app/features/scan/presentation/pages/analysis_result_page.dart';
import 'package:plant_care_app/features/history/presentation/pages/history_page.dart';
import 'package:plant_care_app/features/community/presentation/pages/community_page.dart';
import 'package:plant_care_app/features/profile/presentation/pages/profile_page.dart';
import 'package:plant_care_app/features/profile/presentation/pages/settings_page.dart';
import 'package:plant_care_app/features/notifications/presentation/pages/notifications_page.dart';
import 'package:plant_care_app/shared/widgets/app_bottom_nav.dart';

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: RouteNames.splash,
    routes: [
      GoRoute(
        path: RouteNames.splash,
        builder: (context, state) => const SplashPage(),
      ),
      GoRoute(
        path: RouteNames.onboarding,
        builder: (context, state) => const OnboardingPage(),
      ),
      GoRoute(
        path: RouteNames.login,
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: RouteNames.register,
        builder: (context, state) => const RegisterPage(),
      ),
      ShellRoute(
        builder: (context, state, child) => AppBottomNav(child: child),
        routes: [
          GoRoute(
            path: RouteNames.home,
            builder: (context, state) => const HomePage(),
          ),
          GoRoute(
            path: RouteNames.scan,
            builder: (context, state) => const ScanPage(),
          ),
          GoRoute(
            path: RouteNames.history,
            builder: (context, state) => const HistoryPage(),
          ),
          GoRoute(
            path: RouteNames.community,
            builder: (context, state) => const CommunityPage(),
          ),
          GoRoute(
            path: RouteNames.profile,
            builder: (context, state) => const ProfilePage(),
          ),
        ],
      ),
      GoRoute(
        path: RouteNames.processing,
        builder: (context, state) => const ProcessingPage(),
      ),
      GoRoute(
        path: RouteNames.analysisResult,
        builder: (context, state) => const AnalysisResultPage(),
      ),
      GoRoute(
        path: RouteNames.settings,
        builder: (context, state) => const SettingsPage(),
      ),
      GoRoute(
        path: RouteNames.notifications,
        builder: (context, state) => const NotificationsPage(),
      ),
    ],
  );
});