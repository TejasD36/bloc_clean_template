import 'package:awesome_notifications/awesome_notifications.dart';

import '../../../../logger/logger_service.dart';

class AwesomeNotificationEventHandler {
  @pragma('vm:entry-point')
  static Future<void> onCreated(ReceivedNotification notification) async {}

  @pragma('vm:entry-point')
  static Future<void> onDisplayed(ReceivedNotification notification) async {}

  @pragma('vm:entry-point')
  static Future<void> onDismiss(ReceivedAction action) async {}

  @pragma('vm:entry-point')
  static Future<void> onActionReceived(ReceivedAction action) async {
    final payload = action.payload;

    if (action.buttonKeyPressed == 'REPLY' &&
        action.buttonKeyInput.isNotEmpty) {
      final replyText = action.buttonKeyInput;
      logInfo('Reply to messageId=${payload?['messageId']}: $replyText');
    }

    if (action.buttonKeyPressed == 'MARK_READ') {
      logInfo('Mark Read messageId=${payload?['messageId']}');
    }

    if (payload != null && payload.containsKey('route')) {
      final route = payload['route']!;
      logInfo('Notification action navigation: $route');
    }
  }
}
