// lib/features/encyclopedia/presentation/pages/encyclopedia_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:plant_care_app/theme/app_colors.dart';
import 'package:plant_care_app/features/encyclopedia/presentation/widgets/category_grid.dart';
import 'package:plant_care_app/features/encyclopedia/presentation/widgets/plant_card.dart';
import 'package:plant_care_app/localization/app_localizations.dart';

class EncyclopediaPage extends ConsumerWidget {
  const EncyclopediaPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final categories = [
      {'name': 'Indoor Plants', 'icon': Icons.home, 'count': 124},
      {'name': 'Outdoor Plants', 'icon': Icons.yard, 'count': 89},
      {'name': 'Succulents', 'icon': Icons.water_drop, 'count': 45},
      {'name': 'Flowering', 'icon': Icons.local_florist, 'count': 67},
      {'name': 'Herbs', 'icon': Icons.eco, 'count': 32},
      {'name': 'Trees', 'icon': Icons.park, 'count': 56},
    ];

    final featuredPlants = [
      {
        'name': 'Monstera',
        'scientific': 'Monstera deliciosa',
        'image': 'https://via.placeholder.com/150',
        'care': 'Easy',
        'water': 'Moderate',
      },
      {
        'name': 'Snake Plant',
        'scientific': 'Sansevieria trifasciata',
        'image': 'https://via.placeholder.com/150',
        'care': 'Very Easy',
        'water': 'Low',
      },
      {
        'name': 'Peace Lily',
        'scientific': 'Spathiphyllum',
        'image': 'https://via.placeholder.com/150',
        'care': 'Easy',
        'water': 'Regular',
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Plant Encyclopedia',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Search Bar
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: AppColors.lightGray,
                borderRadius: BorderRadius.circular(15),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search plants...',
                  prefixIcon: const Icon(Icons.search, color: AppColors.darkGray),
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                ),
              ),
            ).animate().fadeIn(),

            const SizedBox(height: 24),

            // Categories
            Text(
              'Categories',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ).animate().fadeIn(delay: 200.ms),

            const SizedBox(height: 12),

            CategoryGrid(categories: categories).animate().fadeIn(delay: 400.ms),

            const SizedBox(height: 24),

            // Featured Plants
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Featured Plants',
                  style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('See All'),
                ),
              ],
            ).animate().fadeIn(delay: 600.ms),

            const SizedBox(height: 12),

            // Plant Cards
            SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: featuredPlants.length,
                itemBuilder: (context, index) {
                  final plant = featuredPlants[index];
                  return PlantCard(
                    name: plant['name'] as String,
                    scientificName: plant['scientific'] as String,
                    imageUrl: plant['image'] as String,
                    careLevel: plant['care'] as String,
                    waterNeeds: plant['water'] as String,
                    onTap: () {
                      // Navigate to plant detail
                    },
                  ).animate().fadeIn(
                    delay: Duration(milliseconds: 800 + (index * 200)),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}