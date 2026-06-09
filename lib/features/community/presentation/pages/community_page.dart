// lib/features/community/presentation/pages/community_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:plant_care_app/theme/app_colors.dart';
import 'package:plant_care_app/features/community/presentation/widgets/post_card.dart';
import 'package:plant_care_app/features/community/presentation/widgets/discussion_item.dart';
import 'package:plant_care_app/localization/app_localizations.dart';

class CommunityPage extends ConsumerWidget {
  const CommunityPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Community',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.create),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Trending Topics
            Text(
              'Trending Topics',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ).animate().fadeIn(),

            const SizedBox(height: 12),

            SizedBox(
              height: 40,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildTopicChip('🌿 Plant Care'),
                  _buildTopicChip('🦠 Disease Control'),
                  _buildTopicChip('🌱 Beginners'),
                  _buildTopicChip('🌸 Flowering'),
                  _buildTopicChip('🪴 Indoor Plants'),
                ],
              ),
            ).animate().fadeIn(delay: 200.ms),

            const SizedBox(height: 24),

            // Posts
            PostCard(
              username: 'GreenThumb42',
              avatar: 'https://via.placeholder.com/40',
              content: 'My monstera is getting yellow leaves. Any tips?',
              image: 'https://via.placeholder.com/300',
              likes: 24,
              comments: 12,
              time: '2 hours ago',
            ).animate().fadeIn(delay: 400.ms),

            const SizedBox(height: 16),

            PostCard(
              username: 'PlantLover99',
              avatar: 'https://via.placeholder.com/40',
              content: 'Just harvested my first tomatoes! 🍅',
              image: 'https://via.placeholder.com/300',
              likes: 56,
              comments: 18,
              time: '5 hours ago',
            ).animate().fadeIn(delay: 600.ms),

            const SizedBox(height: 24),

            // Discussions
            Text(
              'Active Discussions',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ).animate().fadeIn(delay: 800.ms),

            const SizedBox(height: 12),

            DiscussionItem(
              title: 'Best organic fertilizers for indoor plants?',
              replies: 34,
              lastActive: '10 min ago',
            ).animate().fadeIn(delay: 1000.ms),

            DiscussionItem(
              title: 'How to prevent root rot in succulents?',
              replies: 28,
              lastActive: '25 min ago',
            ).animate().fadeIn(delay: 1200.ms),

            DiscussionItem(
              title: 'Share your plant corner setup!',
              replies: 67,
              lastActive: '1 hour ago',
            ).animate().fadeIn(delay: 1400.ms),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: AppColors.primaryGreen,
        child: const Icon(Icons.add, color: Colors.white),
      ).animate().scale(delay: 1600.ms),
    );
  }

  Widget _buildTopicChip(String label) {
    return Container(
      margin: const EdgeInsets.only(right: 8),
      child: Chip(
        label: Text(label),
        backgroundColor: AppColors.lightGray,
        labelStyle: const TextStyle(fontSize: 14),
      ),
    );
  }
}