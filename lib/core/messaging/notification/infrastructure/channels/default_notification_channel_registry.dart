import 'package:awesome_notifications/awesome_notifications.dart';

import '../../domain/channels/notification_channel_registry.dart';
import '../../domain/constants/notification_channels.dart';

class DefaultNotificationChannelRegistry implements NotificationChannelRegistry {
  @override
  List<NotificationChannel> getChannels() {
    return NotificationChannels.toAwesomeChannels();
  }
}
