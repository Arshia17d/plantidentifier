// lib/main.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:plant_care_app/routes/app_router.dart';
import 'package:plant_care_app/theme/app_theme.dart';
import 'package:plant_care_app/localization/app_localizations.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    const ProviderScope(
      child: PlantCareApp(),
    ),
  );
}

class PlantCareApp extends ConsumerStatefulWidget {
  const PlantCareApp({super.key});

  @override
  ConsumerState<PlantCareApp> createState() => _PlantCareAppState();
}

class _PlantCareAppState extends ConsumerState<PlantCareApp> {
  @override
  Widget build(BuildContext context) {
    final router = ref.watch(routerProvider);
    final themeMode = ref.watch(themeModeProvider);
    final locale = ref.watch(localeProvider);

    return MaterialApp.router(
      title: 'Plant Care Assistant',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: themeMode,
      routerConfig: router,
      locale: locale,
      supportedLocales: const [Locale('en'), Locale('fa')],
      localizationsDelegates: const [
        AppLocalizations.delegate,
      ],
    );
  }
}