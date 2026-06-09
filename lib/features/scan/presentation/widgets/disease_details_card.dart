// lib/features/scan/presentation/widgets/disease_details_card.dart
import 'package:flutter/material.dart';
import 'package:plant_care_app/theme/app_colors.dart';

class DiseaseDetailsCard extends StatelessWidget {
  const DiseaseDetailsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        leading: const Icon(Icons.coronavirus, color: AppColors.error),
        title: const Text(
          'Disease Details',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildDetailItem('Disease', 'Leaf Spot Disease'),
                _buildDetailItem('Severity', 'Mild'),
                _buildDetailItem('Affected Area', 'Lower leaves'),
                _buildDetailItem('Description',
                    'Fungal infection causing brown spots on leaves. Spreads in humid conditions.'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              label,
              style: const TextStyle(
                fontWeight: FontWeight.w600,
                color: AppColors.darkGray,
              ),
            ),
          ),
          Expanded(
            child: Text(value),
          ),
        ],
      ),
    );
  }
}