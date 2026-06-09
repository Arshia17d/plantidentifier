// lib/features/scan/presentation/widgets/prevention_card.dart
import 'package:flutter/material.dart';
import 'package:plant_care_app/theme/app_colors.dart';

class PreventionCard extends StatelessWidget {
  const PreventionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ExpansionTile(
        leading: const Icon(Icons.shield, color: AppColors.info),
        title: const Text(
          'Prevention',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        children: const [
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.check_circle, color: AppColors.success),
                  title: Text('Water at the base of the plant'),
                  subtitle: Text('Avoid getting water on leaves'),
                ),
                ListTile(
                  leading: Icon(Icons.check_circle, color: AppColors.success),
                  title: Text('Maintain proper spacing'),
                  subtitle: Text('Ensure good air circulation between plants'),
                ),
                ListTile(
                  leading: Icon(Icons.check_circle, color: AppColors.success),
                  title: Text('Regular inspection'),
                  subtitle: Text('Check leaves weekly for early signs'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}