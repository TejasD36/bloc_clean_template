// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:get_it/get_it.dart';

import '../data/datasources/local/profile_local_datasource.dart';
import '../data/datasources/local/profile_local_datasource_impl.dart';
import '../data/datasources/remote/profile_remote_datasource.dart';
import '../data/datasources/remote/profile_remote_datasource_impl.dart';
import '../data/repositories/profile_repository_impl.dart';
import '../domain/repositories/profile_repository.dart';
import '../domain/usecases/profile_usecase.dart';
import '../presentation/bloc/profile_bloc.dart';

final GetIt sl = GetIt.instance;

Future<void> initProfileDependencies() async {
  sl.registerLazySingleton<ProfileRemoteDatasource>(ProfileRemoteDatasourceImpl.new);

  sl.registerLazySingleton<ProfileLocalDatasource>(ProfileLocalDatasourceImpl.new);

  sl.registerLazySingleton<ProfileRepository>(() => ProfileRepositoryImpl(profileRemoteDatasource: sl(), profileLocalDatasource: sl()));

  sl.registerFactory(() => ProfileUsecase(repository: sl()));

  sl.registerFactory(() => ProfileBloc(profileUsecase: sl()));
}
