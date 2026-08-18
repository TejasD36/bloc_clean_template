import 'package:get_it/get_it.dart';

import '../../features/auth/di/auth_dependencies.dart';
import '../../features/common/dependencies/common_dependencies.dart';
import '../../features/splash/di/splash_dependencies.dart';
import '../network/network_di.dart';
import 'storage_dependencies.dart';

Future<void> initCoreDependencies(GetIt sl) async {
  await initStorageDependencies(sl);
  await initNetworkDependencies(sl);

  await initCommonDependencies(sl);
  await initAuthDependencies(sl);
  await initSplashDependencies(sl);
}
