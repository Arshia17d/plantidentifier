// lib/features/history/presentation/pages/history_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:plant_care_app/theme/app_colors.dart';
import 'package:plant_care_app/features/history/presentation/widgets/history_item.dart';
import 'package:plant_care_app/features/history/presentation/widgets/history_filters.dart';
import 'package:plant_care_app/localization/app_localizations.dart';

class HistoryPage extends ConsumerWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Mock history data
    final historyItems = [
      {
        'plantName': 'Monstera Deliciosa',
        'date': '2024-01-15',
        'health': 'Healthy',
        'image': 'https://via.placeholder.com/60',
      },
      {
        'plantName': 'Rose Bush',
        'date': '2024-01-14',
        'health': 'Minor Issues',
        'image': 'https://via.placeholder.com/60',
      },
      {
        'plantName': 'Tomato Plant',
        'date': '2024-01-13',
        'health': 'Disease Detected',
        'image': 'https://via.placeholder.com/60',
      },
      {
        'plantName': 'Lavender',
        'date': '2024-01-12',
        'health': 'Healthy',
        'image': 'https://via.placeholder.com/60',
      },
      {
        'plantName': 'Basil',
        'date': '2024-01-11',
        'health': 'Healthy',
        'image': 'https://via.placeholder.com/60',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Scan History',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) => const HistoryFilters(),
              );
            },
            icon: const Icon(Icons.filter_list),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: historyItems.length,
        itemBuilder: (context, index) {
          return HistoryItem(
            plantName: historyItems[index]['plantName'] as String,
            date: historyItems[index]['date'] as String,
            healthStatus: historyItems[index]['health'] as String,
            imageUrl: historyItems[index]['image'] as String,
            onTap: () {
              // Navigate to detail
            },
          ).animate().fadeIn(
            delay: Duration(milliseconds: 100 * index),
          ).slideX(
            begin: -0.2,
            end: 0,
            delay: Duration(milliseconds: 100 * index),
          );
        },
      ),
    );
  }
}