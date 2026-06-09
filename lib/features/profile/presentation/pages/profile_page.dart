// lib/features/profile/presentation/pages/profile_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:plant_care_app/routes/route_names.dart';
import 'package:plant_care_app/theme/app_colors.dart';
import 'package:plant_care_app/features/profile/presentation/widgets/profile_header.dart';
import 'package:plant_care_app/features/profile/presentation/widgets/statistics_grid.dart';
import 'package:plant_care_app/features/profile/presentation/widgets/achievements_list.dart';
import 'package:plant_care_app/localization/app_localizations.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profile',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () => context.push(RouteNames.settings),
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Profile Header
            ProfileHeader(
              username: 'Plant Lover',
              email: 'plantlover@email.com',
              avatarUrl: 'https://via.placeholder.com/100',
              memberSince: 'January 2024',
            ).animate().fadeIn(),

            const SizedBox(height: 24),

            // Statistics
            StatisticsGrid(
              totalScans: 47,
              plantsIdentified: 32,
              diseasesDetected: 8,
              contributions: 15,
            ).animate().fadeIn(delay: 200.ms),

            const SizedBox(height: 24),

            // Achievements
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Achievements',
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text('See All'),
                  ),
                ],
              ),
            ).animate().fadeIn(delay: 400.ms),

            AchievementsList().animate().fadeIn(delay: 600.ms),

            const SizedBox(height: 24),

            // Menu Items
            _buildMenuItem(
              context,
              icon: Icons.favorite,
              title: 'Favorite Plants',
              onTap: () {},
            ).animate().fadeIn(delay: 800.ms),

            _buildMenuItem(
              context,
              icon: Icons.calendar_today,
              title: 'Plant Care Calendar',
              onTap: () {},
            ).animate().fadeIn(delay: 1000.ms),

            _buildMenuItem(
              context,
              icon: Icons.notifications,
              title: 'Notifications',
              onTap: () => context.push(RouteNames.notifications),
            ).animate().fadeIn(delay: 1200.ms),

            _buildMenuItem(
              context,
              icon: Icons.insights,
              title: 'Scan Statistics',
              onTap: () {},
            ).animate().fadeIn(delay: 1400.ms),

            _buildMenuItem(
              context,
              icon: Icons.download,
              title: 'Offline Data',
              onTap: () {},
            ).animate().fadeIn(delay: 1600.ms),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(
      BuildContext context, {
        required IconData icon,
        required String title,
        required VoidCallback onTap,
      }) {
    return ListTile(
      leading: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: AppColors.lightGreen.withOpacity(0.1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Icon(icon, color: AppColors.primaryGreen),
      ),
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w500),
      ),
      trailing: const Icon(Icons.chevron_right),
      onTap: onTap,
    );
  }
}