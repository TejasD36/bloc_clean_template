import 'package:hive_ce/hive.dart';

import '../../../../storage/constants/hive_boxes.dart';
import '../../domain/repositories/notification_repository.dart';

class HiveNotificationRepository implements NotificationRepository {
  HiveNotificationRepository()
      : _box = Hive.box(HiveBoxes.notificationRateLimits);

  final Box _box;

  @override
  Future<int?> getLastSent(String channelKey) async {
    return _box.get(channelKey) as int?;
  }

  @override
  Future<void> setLastSent(String channelKey, int timestamp) async {
    await _box.put(channelKey, timestamp);
  }
}
