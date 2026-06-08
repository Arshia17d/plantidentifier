// lib/widgets/plant_card.dart
import 'package:flutter/material.dart';
import '../models/plant.dart';

class PlantCard extends StatelessWidget {
  final Plant plant;
  final VoidCallback? onTap;

  const PlantCard({super.key, required this.plant, this.onTap});

  @override
  Widget build(BuildContext context) {
    // TODO: This widget is currently not used in the main UI.
    // It can be used to display plant details in a card format.
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: plant.imageUrl.isNotEmpty
              ? NetworkImage(plant.imageUrl)
              : null,
          child: plant.imageUrl.isEmpty ? const Icon(Icons.image) : null,
        ),
        title: Text(plant.name),
        subtitle: Text(plant.healthStatus),
        onTap: onTap,
      ),
    );
  }
}