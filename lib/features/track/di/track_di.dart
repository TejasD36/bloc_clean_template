// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:get_it/get_it.dart';

import '../data/datasources/local/track_local_datasource.dart';
import '../data/datasources/local/track_local_datasource_impl.dart';
import '../data/datasources/remote/track_remote_datasource.dart';
import '../data/datasources/remote/track_remote_datasource_impl.dart';
import '../data/repositories/track_repository_impl.dart';
import '../domain/repositories/track_repository.dart';
import '../domain/usecases/track_usecase.dart';
import '../presentation/bloc/track_bloc.dart';

final GetIt sl = GetIt.instance;

Future<void> initTrackDependencies() async {
  sl.registerLazySingleton<TrackRemoteDatasource>(TrackRemoteDatasourceImpl.new);

  sl.registerLazySingleton<TrackLocalDatasource>(TrackLocalDatasourceImpl.new);

  sl.registerLazySingleton<TrackRepository>(() => TrackRepositoryImpl(trackRemoteDatasource: sl(), trackLocalDatasource: sl()));

  sl.registerFactory(() => TrackUsecase(repository: sl()));

  sl.registerFactory(() => TrackBloc(trackUsecase: sl()));
}
