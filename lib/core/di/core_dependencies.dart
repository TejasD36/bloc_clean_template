import 'package:get_it/get_it.dart';

import '../../app/theme/theme_cubit.dart';
import '../network/network_di.dart';
import 'storage_dependencies.dart';

Future<void> initCoreDependencies(GetIt sl) async {
  await initStorageDependencies(sl);
  await initNetworkDependencies(sl);

  sl.registerLazySingleton(AppThemeCubit.new);
}
