import 'package:awesome_notifications/awesome_notifications.dart';

class NotificationChannelConfig {
  const NotificationChannelConfig({
    required this.key,
    required this.name,
    required this.description,
    required this.importance,
    this.cooldownHours = 0,
  });

  final String key;
  final String name;
  final String description;
  final NotificationImportance importance;
  final int cooldownHours;
}
