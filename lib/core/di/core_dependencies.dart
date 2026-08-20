import 'package:get_it/get_it.dart';

import '../../features/auth/di/auth_dependencies.dart';
import '../../features/common/dependencies/common_dependencies.dart';
import '../../features/splash/di/splash_dependencies.dart';
import '../messaging/firebase_messaging_service.dart';
import '../messaging/notification/domain/strategies/notification_strategy.dart';
import '../messaging/notification/factories/notification_strategy_factory.dart';
import '../network/network_di.dart';
import 'storage_dependencies.dart';

Future<void> initCoreDependencies(GetIt sl) async {
  sl.registerLazySingleton<NotificationStrategy>(NotificationStrategyFactory.create);
  sl.registerLazySingleton<FirebaseMessagingService>(() => FirebaseMessagingService(notificationStrategy: sl<NotificationStrategy>()));
  await initStorageDependencies(sl);
  await initNetworkDependencies(sl);

  await initCommonDependencies(sl);
  await initAuthDependencies(sl);
  await initSplashDependencies(sl);
}
