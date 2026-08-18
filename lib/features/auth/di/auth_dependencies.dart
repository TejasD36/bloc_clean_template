// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:get_it/get_it.dart';

import '../domain/usecases/check_authentication_usecase.dart';
import '../domain/usecases/resend_otp_usecase.dart';
import '../domain/usecases/send_otp_usecase.dart';
import '../domain/usecases/verify_otp_usecase.dart';
import '../xcore.dart';

Future<void> initAuthDependencies(GetIt sl) async {
  // Auth datasources
  sl.registerLazySingleton<AuthRemoteDatasource>(
    () => AuthRemoteDatasourceImpl(apiService: sl()),
  );
  sl.registerLazySingleton<AuthLocalDatasource>(
    () => AuthLocalDatasourceImpl(secureStorage: sl(), userStorage: sl()),
  );

  // Auth repository
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(
      authLocalDatasource: sl(),
      authRemoteDatasource: sl(),
    ),
  );

  // Auth use cases
  sl.registerLazySingleton(() => SendOtpUseCase(sl()));
  sl.registerLazySingleton(() => ResendOtpUseCase(sl()));
  sl.registerLazySingleton(() => CheckAuthenticationUseCase(sl()));
  sl.registerLazySingleton(() => VerifyOtpUseCase(sl()));

  // Blocs
  sl.registerFactory(
    () => AuthBloc(
      sendOtpUseCase: sl(),
      resendOtpUseCase: sl(),
      checkAuthenticationUseCase: sl(),
      verifyOtpUseCase: sl(),
    ),
  );
}
