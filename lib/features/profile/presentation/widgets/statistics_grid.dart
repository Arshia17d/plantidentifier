// lib/features/profile/presentation/widgets/statistics_grid.dart
import 'package:flutter/material.dart';
import 'package:plant_care_app/theme/app_colors.dart';

class StatisticsGrid extends StatelessWidget {
  final int totalScans;
  final int plantsIdentified;
  final int diseasesDetected;
  final int contributions;

  const StatisticsGrid({
    super.key,
    required this.totalScans,
    required this.plantsIdentified,
    required this.diseasesDetected,
    required this.contributions,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        childAspectRatio: 1.5,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        children: [
          _buildStatCard('Total Scans', '$totalScans', Icons.camera_alt, AppColors.primaryGreen),
          _buildStatCard('Plants ID\'d', '$plantsIdentified', Icons.eco, AppColors.success),
          _buildStatCard('Diseases', '$diseasesDetected', Icons.healing, AppColors.warning),
          _buildStatCard('Posts', '$contributions', Icons.forum, AppColors.info),
        ],
      ),
    );
  }

  Widget _buildStatCard(String label, String value, IconData icon, Color color) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColors.lightGray,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: color.withValues(alpha: 0.1),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Icon(icon, color: color),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                value,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                label,
                style: const TextStyle(
                  fontSize: 12,
                  color: AppColors.darkGray,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}