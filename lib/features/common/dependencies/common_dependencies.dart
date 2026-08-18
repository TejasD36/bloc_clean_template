import 'package:get_it/get_it.dart';

import '../services/business_settings_store.dart';

Future<void> initCommonDependencies(GetIt sl) async {
  sl.registerLazySingleton<BusinessSettingsStore>(BusinessSettingsStore.new);
}
