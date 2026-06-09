// lib/features/home/presentation/widgets/recent_scans.dart
import 'package:flutter/material.dart';
import 'package:plant_care_app/theme/app_colors.dart';

class RecentScans extends StatelessWidget {
  const RecentScans({super.key});

  @override
  Widget build(BuildContext context) {
    final scans = [
      {'name': 'Monstera', 'date': '2h ago', 'health': 'Healthy'},
      {'name': 'Rose', 'date': '1d ago', 'health': 'Minor Issues'},
      {'name': 'Tomato', 'date': '2d ago', 'health': 'Disease'},
    ];

    return Column(
      children: scans.map((scan) {
        return Container(
          margin: const EdgeInsets.only(bottom: 12),
          padding: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: AppColors.lightGray,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.primaryGreen.withValues(alpha: 0.2),
                ),
                child: const Icon(Icons.eco, color: AppColors.primaryGreen),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      scan['name'] as String,
                      style: const TextStyle(fontWeight: FontWeight.w600),
                    ),
                    Text(
                      scan['date'] as String,
                      style: const TextStyle(color: AppColors.darkGray, fontSize: 12),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.green.withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Text(
                  scan['health'] as String,
                  style: const TextStyle(
                    color: Colors.green,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}