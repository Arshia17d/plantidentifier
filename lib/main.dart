import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app.dart';
import 'viewmodels/settings_viewmodel.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // Load saved locale from SharedPreferences (optional)
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SettingsViewModel()),
        // Other viewmodels can be added here
      ],
      child: const MyApp(),
    ),
  );
}