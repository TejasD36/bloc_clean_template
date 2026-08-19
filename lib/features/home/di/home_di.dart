// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:get_it/get_it.dart';

import '../data/datasources/local/home_local_datasource.dart';
import '../data/datasources/local/home_local_datasource_impl.dart';
import '../data/datasources/remote/home_remote_datasource.dart';
import '../data/datasources/remote/home_remote_datasource_impl.dart';
import '../data/repositories/home_repository_impl.dart';
import '../domain/repositories/home_repository.dart';
import '../domain/usecases/home_usecase.dart';
import '../presentation/bloc/home_bloc.dart';

final GetIt sl = GetIt.instance;

Future<void> initHomeDependencies() async {
  sl.registerLazySingleton<HomeRemoteDatasource>(HomeRemoteDatasourceImpl.new);
  sl.registerLazySingleton<HomeLocalDatasource>(HomeLocalDatasourceImpl.new);
  sl.registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl(homeRemoteDatasource: sl(), homeLocalDatasource: sl()));
  sl.registerFactory(() => HomeUsecase(repository: sl()));
  sl.registerFactory(() => HomeBloc(homeUsecase: sl()));
}
