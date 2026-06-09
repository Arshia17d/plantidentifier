// lib/shared/widgets/app_bottom_nav.dart
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:plant_care_app/routes/route_names.dart';
import 'package:plant_care_app/theme/app_colors.dart';

class AppBottomNav extends ConsumerWidget {
  final Widget child;

  const AppBottomNav({super.key, required this.child});

  int _calculateSelectedIndex(BuildContext context) {
    final location = GoRouterState.of(context).uri.toString();
    if (location.startsWith(RouteNames.home)) return 0;
    if (location.startsWith(RouteNames.scan)) return 1;
    if (location.startsWith(RouteNames.history)) return 2;
    if (location.startsWith(RouteNames.community)) return 3;
    if (location.startsWith(RouteNames.profile)) return 4;
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.go(RouteNames.home);
        break;
      case 1:
        context.go(RouteNames.scan);
        break;
      case 2:
        context.go(RouteNames.history);
        break;
      case 3:
        context.go(RouteNames.community);
        break;
      case 4:
        context.go(RouteNames.profile);
        break;
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = _calculateSelectedIndex(context);

    return Scaffold(
      body: child,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 20,
              offset: const Offset(0, -5),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: selectedIndex,
          onTap: (index) => _onItemTapped(index, context),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: AppColors.primaryGreen,
          unselectedItemColor: AppColors.darkGray,
          selectedFontSize: 12,
          unselectedFontSize: 12,
          items: [
            BottomNavigationBarItem(
              icon: _buildNavIcon(Icons.home, selectedIndex == 0),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: _buildScanButton(selectedIndex == 1),
              label: 'Scan',
            ),
            BottomNavigationBarItem(
              icon: _buildNavIcon(Icons.history, selectedIndex == 2),
              label: 'History',
            ),
            BottomNavigationBarItem(
              icon: _buildNavIcon(Icons.people, selectedIndex == 3),
              label: 'Community',
            ),
            BottomNavigationBarItem(
              icon: _buildNavIcon(Icons.person, selectedIndex == 4),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildNavIcon(IconData icon, bool isSelected) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: isSelected ? AppColors.primaryGreen.withOpacity(0.1) : null,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Icon(icon),
    );
  }

  Widget _buildScanButton(bool isSelected) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: isSelected
              ? [AppColors.primaryGreen, AppColors.darkGreen]
              : [AppColors.mediumGray, AppColors.darkGray],
        ),
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: (isSelected ? AppColors.primaryGreen : AppColors.darkGray)
                .withOpacity(0.3),
            blurRadius: 10,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: const Icon(
        Icons.camera_alt,
        color: Colors.white,
        size: 28,
      ),
    );
  }
}