// lib/features/home/presentation/widgets/tips_carousel.dart
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:plant_care_app/theme/app_colors.dart';

class TipsCarousel extends StatelessWidget {
  const TipsCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    final tips = [
      {
        'title': 'Watering Tip',
        'description': 'Water your plants early in the morning for best absorption',
        'icon': Icons.water_drop,
        'color': AppColors.info,
      },
      {
        'title': 'Light Requirement',
        'description': 'Most indoor plants thrive in indirect sunlight',
        'icon': Icons.wb_sunny,
        'color': AppColors.warning,
      },
      {
        'title': 'Fertilizer Guide',
        'description': 'Use organic fertilizer every 2-4 weeks during growing season',
        'icon': Icons.eco,
        'color': AppColors.success,
      },
    ];

    return CarouselSlider(
      options: CarouselOptions(
        height: 150,
        autoPlay: true,
        enlargeCenterPage: true,
        viewportFraction: 0.85,
      ),
      items: tips.map((tip) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                (tip['color'] as Color).withValues(alpha: 0.8),
                (tip['color'] as Color),
              ],
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                Icon(
                  tip['icon'] as IconData,
                  size: 40,
                  color: Colors.white,
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        tip['title'] as String,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        tip['description'] as String,
                        style: const TextStyle(
                          color: Colors.white70,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}