// lib/features/home/presentation/pages/home_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:plant_care_app/theme/app_colors.dart';
import 'package:plant_care_app/features/home/presentation/widgets/welcome_header.dart';
import 'package:plant_care_app/features/home/presentation/widgets/tips_carousel.dart';
import 'package:plant_care_app/features/home/presentation/widgets/quick_actions.dart';
import 'package:plant_care_app/features/home/presentation/widgets/recent_scans.dart';
import 'package:plant_care_app/features/home/presentation/widgets/daily_reminder_card.dart';
import 'package:plant_care_app/localization/app_localizations.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          // Welcome Header
          SliverToBoxAdapter(
            child: WelcomeHeader().animate().fadeIn().slideY(),
          ),

          // Search Bar
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: AppColors.lightGray,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search plants, diseases...',
                    prefixIcon: const Icon(Icons.search, color: AppColors.darkGray),
                    border: InputBorder.none,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20),
                  ),
                ),
              ).animate().fadeIn(delay: 200.ms),
            ),
          ),

          // Tips Carousel
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: TipsCarousel(),
            ).animate().fadeIn(delay: 400.ms),
          ),

          // Quick Actions
          SliverToBoxAdapter(
            child: QuickActions().animate().fadeIn(delay: 600.ms),
          ),

          // Daily Reminder
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: DailyReminderCard(),
            ).animate().fadeIn(delay: 800.ms),
          ),

          // Recent Scans
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Recent Scans',
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
                  const SizedBox(height: 12),
                  RecentScans(),
                ],
              ),
            ).animate().fadeIn(delay: 1000.ms),
          ),

          const SliverToBoxAdapter(child: SizedBox(height: 20)),
        ],
      ),
    );
  }
}