import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

import '../storage/constants/storage_keys.dart';
import '../storage/secure_storage_service.dart';
import 'base_api_service.dart';
import 'config/dio_factory.dart';
import 'interceptors/api_response_log_interceptor.dart';
import 'interceptors/auth_interceptor.dart';
import 'interceptors/network_interceptor.dart';
import 'network_api_service.dart';
import 'services/network_monitor_service.dart';
import 'services/session_expiry_notifier.dart';

Future<void> initNetworkDependencies(GetIt sl) async {
  sl.registerLazySingleton<Connectivity>(Connectivity.new);

  sl.registerLazySingleton<NetworkMonitorService>(
    () => NetworkMonitorService(sl<Connectivity>()),
  );

  sl.registerLazySingleton<NetworkInterceptor>(
    () => NetworkInterceptor(sl<NetworkMonitorService>()),
  );

  sl.registerLazySingleton<AuthInterceptor>(
    () => AuthInterceptor(
      tokenProvider: () =>
          sl<SecureStorageService>().read(StorageKeys.jwtToken),
    ),
  );

  sl.registerLazySingleton<Dio>(
    () => DioFactory.create(
      interceptors: [
        sl<NetworkInterceptor>(),
        sl<AuthInterceptor>(),
        if (kDebugMode) ApiResponseLogInterceptor.create(),
      ],
    ),
  );

  sl.registerLazySingleton<SessionExpiryNotifier>(SessionExpiryNotifier.new);

  sl.registerLazySingleton<BaseApiService>(
    () => NetworkApiService(sl<Dio>(), sl<SessionExpiryNotifier>()),
  );
}
