// lib/features/scan/presentation/widgets/care_guide_card.dart
import 'package:flutter/material.dart';
import 'package:plant_care_app/theme/app_colors.dart';

class CareGuideCard extends StatelessWidget {
  const CareGuideCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        leading: const Icon(Icons.eco, color: AppColors.success),
        title: const Text(
          'Care Guide',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                _buildCareItem(Icons.water_drop, 'Watering',
                    'Water every 7-10 days. Allow soil to dry between waterings.'),
                _buildCareItem(Icons.wb_sunny, 'Sunlight',
                    'Bright indirect light. Avoid direct sunlight.'),
                _buildCareItem(Icons.thermostat, 'Temperature',
                    'Optimal range: 18-24°C. Protect from cold drafts.'),
                _buildCareItem(Icons.grass, 'Fertilization',
                    'Apply balanced liquid fertilizer monthly during growing season.'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCareItem(IconData icon, String title, String description) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: AppColors.primaryGreen, size: 24),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  description,
                  style: const TextStyle(
                    color: AppColors.darkGray,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}