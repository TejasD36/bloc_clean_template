import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart' show Color;

import '../enum/notification_channel_type.dart';
import '../models/notification_channel_config.dart';

class NotificationChannels {
  static const Map<NotificationChannelType, NotificationChannelConfig>
      channels = {
    NotificationChannelType.general: NotificationChannelConfig(
      key: 'general',
      name: 'General',
      description: 'Notifications from Pune Water Helpline',
      importance: NotificationImportance.High,
      cooldownHours: 0,
    ),
    NotificationChannelType.marketing: NotificationChannelConfig(
      key: 'marketing',
      name: 'Marketing',
      description: 'Promotional notifications',
      importance: NotificationImportance.Default,
      cooldownHours: 4,
    ),
    NotificationChannelType.transactions: NotificationChannelConfig(
      key: 'transactions',
      name: 'Transactions',
      description: 'Booking and payment notifications',
      importance: NotificationImportance.High,
      cooldownHours: 0,
    ),
    NotificationChannelType.reminders: NotificationChannelConfig(
      key: 'reminders',
      name: 'Reminders',
      description: 'Reminder notifications',
      importance: NotificationImportance.Default,
      cooldownHours: 1,
    ),
    NotificationChannelType.progress: NotificationChannelConfig(
      key: 'progress',
      name: 'Progress',
      description: 'Progress notifications',
      importance: NotificationImportance.Low,
      cooldownHours: 0,
    ),
    NotificationChannelType.chat: NotificationChannelConfig(
      key: 'chat',
      name: 'Chat',
      description: 'Single chat messages',
      importance: NotificationImportance.High,
      cooldownHours: 0,
    ),
    NotificationChannelType.groupChat: NotificationChannelConfig(
      key: 'group_chat',
      name: 'Group Chat',
      description: 'Group chat messages',
      importance: NotificationImportance.High,
      cooldownHours: 0,
    ),
  };

  static List<NotificationChannel> toAwesomeChannels() {
    return channels.values.map((config) {
      return NotificationChannel(
        channelKey: config.key,
        channelName: config.name,
        channelDescription: config.description,
        importance: config.importance,
        channelShowBadge: true,
        playSound: true,
        enableVibration: true,
        ledColor: const Color(0xFF0058BE),
      );
    }).toList();
  }

  static String key(NotificationChannelType type) {
    return channels[type]!.key;
  }

  static int cooldownForKey(String channelKey) {
    final channel = channels.values.firstWhere(
      (c) => c.key == channelKey,
      orElse: () => NotificationChannelConfig(
        key: channelKey,
        cooldownHours: 0,
        name: channelKey,
        description: channelKey,
        importance: NotificationImportance.Default,
      ),
    );
    return channel.cooldownHours;
  }
}
