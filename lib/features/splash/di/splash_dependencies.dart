// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:get_it/get_it.dart';

import '../../splash/data/datasources/remote/splash_remote_datasource.dart';
import '../../splash/data/datasources/remote/splash_remote_datasource_impl.dart';
import '../../splash/data/repositories/splash_repository_impl.dart';
import '../../splash/domain/repositories/splash_repository.dart';
import '../../splash/domain/usecases/get_splash_usecase.dart';
import '../presentation/bloc/splash_bloc.dart';

Future<void> initSplashDependencies(GetIt sl) async {
  // Splash datasource
  sl.registerLazySingleton<SplashRemoteDatasource>(() => SplashRemoteDatasourceImpl(apiService: sl()));

  // Splash repository
  sl.registerLazySingleton<SplashRepository>(() => SplashRepositoryImpl(splashRemoteDatasource: sl()));

  // Splash use case
  sl.registerLazySingleton(() => GetSplashScreenUseCase(sl()));

  // Blocs
  sl.registerFactory(() => SplashBloc(getSplashScreenUseCase: sl(), businessSettingsStore: sl()));
}
