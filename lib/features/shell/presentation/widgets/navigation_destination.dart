import 'package:flutter/material.dart';

/// Represents a destination in the application's bottom navigation bar.
class NavigationDestinationItem {
  const NavigationDestinationItem({
    required this.label,
    required this.icon,
    this.selectedIcon,
  });

  /// Destination label.
  final String label;

  /// Default icon.
  final IconData icon;

  /// Selected icon.
  final IconData? selectedIcon;
}
