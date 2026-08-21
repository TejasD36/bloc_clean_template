import 'package:get_it/get_it.dart';

import '../../features/address/di/address_dependencies.dart';
import '../../features/auth/di/auth_dependencies.dart';
import '../../features/common/dependencies/common_dependencies.dart';
import '../../features/home/di/home_dependencies.dart';
import '../../features/services/di/services_dependencies.dart';
import '../../features/splash/di/splash_dependencies.dart';
import '../messaging/firebase_messaging_service.dart';
import '../messaging/notification/domain/strategies/notification_strategy.dart';
import '../messaging/notification/factories/notification_strategy_factory.dart';
import '../network/network_di.dart';
import '../payment/razorpay_service.dart';
import 'storage_dependencies.dart';

Future<void> initCoreDependencies(GetIt sl) async {
  sl.registerLazySingleton<NotificationStrategy>(NotificationStrategyFactory.create);
  sl.registerLazySingleton<FirebaseMessagingService>(() => FirebaseMessagingService(notificationStrategy: sl<NotificationStrategy>()));
  sl.registerFactoryParam<RazorpayService, PaymentSuccessCallback, PaymentFailureCallback>(RazorpayService.new);
  await initStorageDependencies(sl);
  await initNetworkDependencies(sl);

  await initCommonDependencies(sl);
  await initAuthDependencies(sl);
  await initSplashDependencies(sl);
  await initHomeDependencies(sl);
  await initAddressDependencies(sl);
  await initServicesDependencies(sl);
}
