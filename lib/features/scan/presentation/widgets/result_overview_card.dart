// lib/features/scan/presentation/widgets/result_overview_card.dart
import 'package:flutter/material.dart';
import 'package:plant_care_app/theme/app_colors.dart';

class ResultOverviewCard extends StatelessWidget {
  const ResultOverviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.info_outline, color: AppColors.primaryGreen),
                const SizedBox(width: 8),
                Text(
                  'Overview',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            const Text(
              'Your Monstera Deliciosa is generally healthy but shows early signs of leaf spot disease. '
                  'Immediate attention is recommended to prevent further spread.',
              style: TextStyle(
                fontSize: 14,
                height: 1.6,
                color: AppColors.black,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                _buildInfoChip(Icons.water_drop, 'Moderate Water', AppColors.info),
                const SizedBox(width: 8),
                _buildInfoChip(Icons.wb_sunny, 'Indirect Light', AppColors.warning),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoChip(IconData icon, String label, Color color) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      decoration: BoxDecoration(
        color: color.withValues(alpha: 0.1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon, size: 16, color: color),
          const SizedBox(width: 4),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: color,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}