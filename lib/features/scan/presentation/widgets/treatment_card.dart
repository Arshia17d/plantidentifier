// lib/features/scan/presentation/widgets/treatment_card.dart
import 'package:flutter/material.dart';
import 'package:plant_care_app/theme/app_colors.dart';

class TreatmentCard extends StatelessWidget {
  const TreatmentCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        leading: const Icon(Icons.medical_services, color: AppColors.primaryGreen),
        title: const Text(
          'Treatments',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        children: const [
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _TreatmentItem(
                  number: '1',
                  text: 'Remove affected leaves immediately',
                ),
                _TreatmentItem(
                  number: '2',
                  text: 'Apply copper-based fungicide every 7-10 days',
                ),
                _TreatmentItem(
                  number: '3',
                  text: 'Improve air circulation around the plant',
                ),
                _TreatmentItem(
                  number: '4',
                  text: 'Reduce humidity levels if possible',
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TreatmentItem extends StatelessWidget {
  final String number;
  final String text;

  const _TreatmentItem({
    required this.number,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 24,
            height: 24,
            decoration: const BoxDecoration(
              color: AppColors.primaryGreen,
              shape: BoxShape.circle,
            ),
            child: Center(
              child: Text(
                number,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          const SizedBox(width: 12),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}