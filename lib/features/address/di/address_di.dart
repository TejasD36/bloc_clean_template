// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:get_it/get_it.dart';

import '../data/datasources/local/address_local_datasource.dart';
import '../data/datasources/local/address_local_datasource_impl.dart';
import '../data/datasources/remote/address_remote_datasource.dart';
import '../data/datasources/remote/address_remote_datasource_impl.dart';
import '../data/repositories/address_repository_impl.dart';
import '../domain/repositories/address_repository.dart';
import '../presentation/bloc/address_bloc.dart';

final GetIt sl = GetIt.instance;

Future<void> initAddressDependencies() async {
  sl.registerLazySingleton<AddressRemoteDatasource>(AddressRemoteDatasourceImpl.new);

  sl.registerLazySingleton<AddressLocalDatasource>(AddressLocalDatasourceImpl.new);

  sl.registerLazySingleton<AddressRepository>(() => AddressRepositoryImpl(addressRemoteDatasource: sl(), addressLocalDatasource: sl()));

  sl.registerFactory(() => AddressBloc(addressUsecase: sl()));
}
