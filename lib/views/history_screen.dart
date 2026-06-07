import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../viewmodels/history_viewmodel.dart';
import '../widgets/scan_card.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HistoryViewModel(),
      child: Scaffold(
        appBar: AppBar(title: const Text('History')),
        body: Consumer<HistoryViewModel>(
          builder: (context, vm, _) {
            return ListView.builder(
              itemCount: vm.history.length,
              itemBuilder: (context, index) {
                return ScanCard(scan: vm.history[index]);
              },
            );
          },
        ),
      ),
    );
  }
}