import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import '../localization/app_localizations.dart';
import '../viewmodels/home_viewmodel.dart';
import '../widgets/scan_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final t = AppLocalizations.of(context);
    return ChangeNotifierProvider(
      create: (_) => HomeViewModel(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(t.translate('app_name')),
          actions: [
            IconButton(
              icon: const Icon(Icons.history),
              onPressed: () => context.push('/history'),
            ),
            IconButton(
              icon: const Icon(Icons.person),
              onPressed: () => context.push('/profile'),
            ),
          ],
        ),
        body: Consumer<HomeViewModel>(
          builder: (context, vm, _) {
            return Column(
              children: [
                const SizedBox(height: 20),
                // Take Photo Button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: FilledButton.icon(
                    onPressed: () => context.push('/camera'),
                    icon: const Icon(Icons.camera_alt),
                    label: Text(t.translate('take_photo')),
                    style: FilledButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                // Recent Scans
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        t.translate('recent_scans'),
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                      TextButton(
                        onPressed: () => context.push('/history'),
                        child: const Text('See all'),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                Expanded(
                  child: ListView.builder(
                    itemCount: vm.recentScans.length,
                    itemBuilder: (context, index) {
                      final scan = vm.recentScans[index];
                      return ScanCard(scan: scan);
                    },
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}