import 'package:get_it/get_it.dart';

import '../data/datasources/remote/tanker_remote_datasource.dart';
import '../data/datasources/remote/tanker_remote_datasource_impl.dart';
import '../data/datasources/remote/water_type_remote_datasource.dart';
import '../data/datasources/remote/water_type_remote_datasource_impl.dart';
import '../data/datasources/remote/water_product_remote_datasource.dart';
import '../data/datasources/remote/water_product_remote_datasource_impl.dart';
import '../data/repositories/tanker_repository_impl.dart';
import '../data/repositories/water_type_repository_impl.dart';
import '../data/repositories/water_product_repository_impl.dart';
import '../domain/repositories/tanker_repository.dart';
import '../domain/repositories/water_type_repository.dart';
import '../domain/repositories/water_product_repository.dart';
import '../domain/usecases/get_tanker_capacities_usecase.dart';
import '../domain/usecases/get_water_types_usecase.dart';
import '../domain/usecases/get_water_products_usecase.dart';
import '../presentation/bloc/tanker_capacity_bloc.dart';
import '../presentation/bloc/water_type_bloc.dart';
import '../presentation/bloc/water_product_bloc.dart';

Future<void> initServicesDependencies(GetIt sl) async {
  sl.registerLazySingleton<TankerRemoteDatasource>(
    () => TankerRemoteDatasourceImpl(apiService: sl()),
  );
  sl.registerLazySingleton<TankerRepository>(
    () => TankerRepositoryImpl(remoteDatasource: sl()),
  );
  sl.registerFactory(() => GetTankerCapacitiesUsecase(repository: sl()));
  sl.registerFactory(() => TankerCapacityBloc(usecase: sl()));
  sl.registerLazySingleton<WaterTypeRemoteDatasource>(
    () => WaterTypeRemoteDatasourceImpl(apiService: sl()),
  );
  sl.registerLazySingleton<WaterTypeRepository>(
    () => WaterTypeRepositoryImpl(remoteDatasource: sl()),
  );
  sl.registerFactory(() => GetWaterTypesUsecase(repository: sl()));
  sl.registerFactory(() => WaterTypeBloc(usecase: sl()));
  sl.registerLazySingleton<WaterProductRemoteDatasource>(
    () => WaterProductRemoteDatasourceImpl(apiService: sl()),
  );
  sl.registerLazySingleton<WaterProductRepository>(
    () => WaterProductRepositoryImpl(remoteDatasource: sl()),
  );
  sl.registerFactory(() => GetWaterProductsUsecase(repository: sl()));
  sl.registerFactory(() => WaterProductBloc(usecase: sl()));
}
