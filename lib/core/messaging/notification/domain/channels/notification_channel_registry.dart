import 'package:awesome_notifications/awesome_notifications.dart';

abstract class NotificationChannelRegistry {
  List<NotificationChannel> getChannels();
}
