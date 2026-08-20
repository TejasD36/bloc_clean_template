import '../../../../logger/logger_service.dart';
import '../../domain/constants/notification_channels.dart';
import '../../domain/repositories/notification_repository.dart';
import '../../domain/strategies/notification_rate_limit_strategy.dart';

class LocalNotificationRateLimitStrategy
    implements NotificationRateLimitStrategy {
  LocalNotificationRateLimitStrategy({required this.repository});

  final NotificationRepository repository;

  @override
  Future<bool> canSend(String channelKey) async {
    final lastSent = await repository.getLastSent(channelKey);

    if (lastSent == null) return true;

    final cooldown = NotificationChannels.cooldownForKey(channelKey);

    if (cooldown == 0) return true;

    final lastTime = DateTime.fromMillisecondsSinceEpoch(lastSent);
    final canSend = DateTime.now().difference(lastTime).inHours >= cooldown;
    logInfo('NotificationRateLimit - canSend: $channelKey: $canSend');
    return canSend;
  }

  @override
  Future<void> markSent(String channelKey) async {
    await repository.setLastSent(
      channelKey,
      DateTime.now().millisecondsSinceEpoch,
    );
  }
}
