// lib/features/community/presentation/widgets/discussion_item.dart
import 'package:flutter/material.dart';
import 'package:plant_care_app/theme/app_colors.dart';

class DiscussionItem extends StatelessWidget {
  final String title;
  final int replies;
  final String lastActive;

  const DiscussionItem({
    super.key,
    required this.title,
    required this.replies,
    required this.lastActive,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        leading: Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: AppColors.primaryGreen.withValues(alpha: 0.1),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Icon(Icons.forum, color: AppColors.primaryGreen),
        ),
        title: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
        subtitle: Text('$replies replies • $lastActive'),
        trailing: const Icon(Icons.chevron_right),
        onTap: () {},
      ),
    );
  }
}