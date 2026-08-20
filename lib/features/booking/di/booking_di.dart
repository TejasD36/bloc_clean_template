// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:get_it/get_it.dart';

import '../data/datasources/local/booking_local_datasource.dart';
import '../data/datasources/local/booking_local_datasource_impl.dart';
import '../data/datasources/remote/booking_remote_datasource.dart';
import '../data/datasources/remote/booking_remote_datasource_impl.dart';
import '../data/repositories/booking_repository_impl.dart';
import '../domain/repositories/booking_repository.dart';
import '../domain/usecases/booking_usecase.dart';
import '../presentation/bloc/booking_bloc.dart';

final GetIt sl = GetIt.instance;

Future<void> initBookingDependencies() async {
  sl.registerLazySingleton<BookingRemoteDatasource>(BookingRemoteDatasourceImpl.new);

  sl.registerLazySingleton<BookingLocalDatasource>(BookingLocalDatasourceImpl.new);

  sl.registerLazySingleton<BookingRepository>(() => BookingRepositoryImpl(bookingRemoteDatasource: sl(), bookingLocalDatasource: sl()));

  sl.registerFactory(() => BookingUsecase(repository: sl()));

  sl.registerFactory(() => BookingBloc(bookingUsecase: sl()));
}
