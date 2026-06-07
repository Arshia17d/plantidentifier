import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../localization/app_localizations.dart';
import '../viewmodels/settings_viewmodel.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    final settings = Provider.of<SettingsViewModel>(context);
    return Scaffold(
      appBar: AppBar(title: Text(t.translate('settings'))),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.language),
            title: Text(t.translate('language')),
            subtitle: Text(settings.locale.languageCode == 'fa' ? 'فارسی' : 'English'),
            onTap: () {
              _showLanguageDialog(context, settings);
            },
          ),
          SwitchListTile(
            secondary: const Icon(Icons.dark_mode),
            title: Text(t.translate('dark_mode')),
            value: settings.isDarkMode,
            onChanged: (val) => settings.toggleDarkMode(),
          ),
        ],
      ),
    );
  }

  void _showLanguageDialog(BuildContext context, SettingsViewModel settings) {
    showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          title: Text(AppLocalizations.of(context).translate('language')),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                title: const Text('English'),
                onTap: () {
                  settings.setLocale('en');
                  Navigator.pop(ctx);
                },
              ),
              ListTile(
                title: const Text('فارسی'),
                onTap: () {
                  settings.setLocale('fa');
                  Navigator.pop(ctx);
                },
              ),
            ],
          ),
        );
      },
    );
  }
}