import '../domain/channels/notification_channel_registry.dart';
import '../domain/repositories/notification_repository.dart';
import '../domain/strategies/notification_rate_limit_strategy.dart';
import '../domain/strategies/notification_strategy.dart';
import '../infrastructure/adapters/awesome_notifications_adapter.dart';
import '../infrastructure/channels/default_notification_channel_registry.dart';
import '../infrastructure/repositories/hive_notification_repository.dart';
import '../infrastructure/strategies/awesome_notification_strategy.dart';
import '../infrastructure/strategies/local_notification_rate_limit_strategy.dart';

class NotificationStrategyFactory {
  NotificationStrategyFactory._();

  static NotificationStrategy create({
    NotificationRepository? repository,
    NotificationRateLimitStrategy? rateLimitStrategy,
    NotificationChannelRegistry? channelRegistry,
    AwesomeNotificationsAdapter? adapter,
  }) {
    final NotificationRepository repo =
        repository ?? HiveNotificationRepository();

    final NotificationRateLimitStrategy rateLimiter =
        rateLimitStrategy ??
            LocalNotificationRateLimitStrategy(repository: repo);

    final NotificationChannelRegistry registry =
        channelRegistry ?? DefaultNotificationChannelRegistry();

    final AwesomeNotificationsAdapter notifAdapter =
        adapter ?? AwesomeNotificationsAdapter();

    return AwesomeNotificationStrategy(
      rateLimitStrategy: rateLimiter,
      adapter: notifAdapter,
      channelRegistry: registry,
    );
  }
}
