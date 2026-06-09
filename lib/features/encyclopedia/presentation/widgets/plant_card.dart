// lib/features/encyclopedia/presentation/widgets/plant_card.dart
import 'package:flutter/material.dart';
import 'package:plant_care_app/theme/app_colors.dart';

class PlantCard extends StatelessWidget {
  final String name;
  final String scientificName;
  final String imageUrl;
  final String careLevel;
  final String waterNeeds;
  final VoidCallback onTap;

  const PlantCard({
    super.key,
    required this.name,
    required this.scientificName,
    required this.imageUrl,
    required this.careLevel,
    required this.waterNeeds,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 160,
        margin: const EdgeInsets.only(right: 12),
        decoration: BoxDecoration(
          color: AppColors.lightGray,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
              child: Image.network(
                imageUrl,
                height: 120,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    scientificName,
                    style: TextStyle(
                      fontSize: 11,
                      color: AppColors.darkGray,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      Icon(Icons.water_drop, size: 14, color: AppColors.info),
                      const SizedBox(width: 4),
                      Text(waterNeeds, style: const TextStyle(fontSize: 11)),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}