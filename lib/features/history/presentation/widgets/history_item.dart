// lib/features/history/presentation/widgets/history_item.dart
import 'package:flutter/material.dart';
import 'package:plant_care_app/theme/app_colors.dart';

class HistoryItem extends StatelessWidget {
  final String plantName;
  final String date;
  final String healthStatus;
  final String imageUrl;
  final VoidCallback onTap;

  const HistoryItem({
    super.key,
    required this.plantName,
    required this.date,
    required this.healthStatus,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Color healthColor;
    switch (healthStatus.toLowerCase()) {
      case 'healthy':
        healthColor = AppColors.healthyGreen;
        break;
      case 'minor issues':
        healthColor = AppColors.mildYellow;
        break;
      case 'disease detected':
        healthColor = AppColors.severeRed;
        break;
      default:
        healthColor = AppColors.darkGray;
    }

    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            imageUrl,
            width: 60,
            height: 60,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(
          plantName,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Text(date),
        trailing: Container(
          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
          decoration: BoxDecoration(
            color: healthColor.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            healthStatus,
            style: TextStyle(
              color: healthColor,
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}