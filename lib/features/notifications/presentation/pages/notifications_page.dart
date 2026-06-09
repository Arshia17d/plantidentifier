// lib/features/notifications/presentation/pages/notifications_page.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:plant_care_app/theme/app_colors.dart';
import 'package:plant_care_app/localization/app_localizations.dart';

class NotificationsPage extends ConsumerWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifications = [
      {
        'type': 'watering',
        'title': 'Time to Water!',
        'message': 'Your Monstera needs watering. Last watered 3 days ago.',
        'time': '10 minutes ago',
        'icon': Icons.water_drop,
        'color': AppColors.info,
      },
      {
        'type': 'health',
        'title': 'Plant Health Alert',
        'message': 'Possible pest detected on your Rose Bush. Check immediately.',
        'time': '2 hours ago',
        'icon': Icons.warning_amber,
        'color': AppColors.warning,
      },
      {
        'type': 'reminder',
        'title': 'Fertilizer Reminder',
        'message': "It's time to fertilize your indoor plants this week.",
        'time': '5 hours ago',
        'icon': Icons.eco,
        'color': AppColors.success,
      },
      {
        'type': 'community',
        'title': 'New Comment',
        'message': 'GreenThumb42 commented on your post about succulents.',
        'time': '1 day ago',
        'icon': Icons.comment,
        'color': AppColors.primaryGreen,
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Notifications',
          style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('Mark all read'),
          ),
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: notifications.length,
        itemBuilder: (context, index) {
          final notification = notifications[index];
          return Card(
            margin: const EdgeInsets.only(bottom: 12),
            child: ListTile(
              leading: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: (notification['color'] as Color).withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(
                  notification['icon'] as IconData,
                  color: notification['color'] as Color,
                ),
              ),
              title: Text(
                notification['title'] as String,
                style: const TextStyle(fontWeight: FontWeight.w600),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 4),
                  Text(notification['message'] as String),
                  const SizedBox(height: 4),
                  Text(
                    notification['time'] as String,
                    style: TextStyle(
                      color: AppColors.darkGray,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              isThreeLine: true,
              onTap: () {},
            ),
          ).animate().fadeIn(
            delay: Duration(milliseconds: 100 * index),
          ).slideX(
            begin: -0.1,
            delay: Duration(milliseconds: 100 * index),
          );
        },
      ),
    );
  }
}