// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:get_it/get_it.dart';

import '../data/datasources/local/address_local_datasource.dart';
import '../data/datasources/local/address_local_datasource_impl.dart';
import '../data/datasources/remote/address_remote_datasource.dart';
import '../data/datasources/remote/address_remote_datasource_impl.dart';
import '../data/repositories/address_repository_impl.dart';
import '../domain/repositories/address_repository.dart';
import '../domain/usecases/address_usecase.dart';
import '../presentation/bloc/address_bloc.dart';
import '../presentation/bloc/address_event.dart';
import '../presentation/bloc/address_state.dart';

final GetIt sl = GetIt.instance;

Future<void> initAddressDependencies() async {
                        sl.registerLazySingleton<AddressRemoteDatasource>(
                          () => AddressRemoteDatasourceImpl(),
                        );
                      
                      
                        sl.registerLazySingleton<AddressLocalDatasource>(
                          () => AddressLocalDatasourceImpl(),
                        );
                      
                      
                        sl.registerLazySingleton<AddressRepository>(
                          () => AddressRepositoryImpl(
  addressRemoteDatasource: sl(),
  addressLocalDatasource: sl(),
),
                        );
                      
                      
                        sl.registerFactory(
                          () => AddressBloc(
  addressUsecase: sl(),
),
                        );
                      
                      
}
