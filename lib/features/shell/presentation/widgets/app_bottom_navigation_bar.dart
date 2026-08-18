import 'package:flutter/material.dart';

import 'navigation_destination.dart';

/// Application bottom navigation bar.
///
/// This widget is intentionally presentation-only.
/// Navigation is handled by the shell screen.
class AppBottomNavigationBar extends StatelessWidget {
  const AppBottomNavigationBar({super.key, required this.currentIndex, required this.onDestinationSelected});

  final int currentIndex;

  final ValueChanged<int> onDestinationSelected;

  static const destinations = <NavigationDestinationItem>[
    NavigationDestinationItem(label: 'Home', icon: Icons.home_outlined, selectedIcon: Icons.home),
    NavigationDestinationItem(label: 'Bookings', icon: Icons.receipt_long_outlined, selectedIcon: Icons.receipt_long),
    NavigationDestinationItem(label: 'Track', icon: Icons.local_shipping_outlined, selectedIcon: Icons.local_shipping),
    NavigationDestinationItem(label: 'Profile', icon: Icons.person_outline, selectedIcon: Icons.person),
  ];

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return NavigationBar(
      selectedIndex: currentIndex,
      onDestinationSelected: onDestinationSelected,
      backgroundColor: colorScheme.surface,
      indicatorColor: colorScheme.primaryContainer,
      labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
      destinations: destinations
          .map(
            (destination) => NavigationDestination(
              icon: Icon(destination.icon),
              selectedIcon: Icon(destination.selectedIcon ?? destination.icon, color: Colors.white),
              label: destination.label,
            ),
          )
          .toList(),
    );
  }
}
