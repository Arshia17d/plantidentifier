// lib/features/profile/presentation/widgets/achievements_list.dart
import 'package:flutter/material.dart';
import 'package:plant_care_app/theme/app_colors.dart';

class AchievementsList extends StatelessWidget {
  const AchievementsList({super.key});

  @override
  Widget build(BuildContext context) {
    final achievements = [
      {'icon': Icons.eco, 'title': 'Plant Expert', 'desc': 'Identified 50+ plants', 'color': AppColors.success},
      {'icon': Icons.healing, 'title': 'Plant Doctor', 'desc': 'Diagnosed 10+ diseases', 'color': AppColors.info},
      {'icon': Icons.star, 'title': 'Top Contributor', 'desc': 'Helped 100+ members', 'color': AppColors.warning},
    ];

    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: achievements.length,
        itemBuilder: (context, index) {
          final achievement = achievements[index];
          return Container(
            width: 160,
            margin: const EdgeInsets.only(right: 12),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: AppColors.lightGray,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: (achievement['color'] as Color).withValues(alpha: 0.1),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Icon(achievement['icon'] as IconData,
                      color: achievement['color'] as Color, size: 24),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        achievement['title'] as String,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 13,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        achievement['desc'] as String,
                        style: const TextStyle(fontSize: 10, color: AppColors.darkGray),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}