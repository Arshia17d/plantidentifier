// lib/features/home/presentation/widgets/quick_actions.dart
import 'package:flutter/material.dart';
import 'package:plant_care_app/theme/app_colors.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    final actions = [
      {'icon': Icons.search, 'label': 'Identify', 'color': AppColors.primaryGreen},
      {'icon': Icons.healing, 'label': 'Diagnose', 'color': AppColors.warning},
      {'icon': Icons.water_drop, 'label': 'Water', 'color': AppColors.info},
      {'icon': Icons.book, 'label': 'Learn', 'color': AppColors.success},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: actions.map((action) {
          return Column(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: (action['color'] as Color).withValues(alpha: 0.1),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(
                  action['icon'] as IconData,
                  color: action['color'] as Color,
                  size: 28,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                action['label'] as String,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}