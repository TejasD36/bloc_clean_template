import 'package:get_it/get_it.dart';

import '../data/datasources/remote/tanker_remote_datasource.dart';
import '../data/datasources/remote/tanker_remote_datasource_impl.dart';
import '../data/datasources/remote/water_type_remote_datasource.dart';
import '../data/datasources/remote/water_type_remote_datasource_impl.dart';
import '../data/datasources/remote/water_product_remote_datasource.dart';
import '../data/datasources/remote/water_product_remote_datasource_impl.dart';
import '../data/datasources/remote/water_tank_cleaning_remote_datasource.dart';
import '../data/datasources/remote/water_tank_cleaning_remote_datasource_impl.dart';
import '../data/datasources/remote/plumbing_remote_datasource.dart';
import '../data/datasources/remote/plumbing_remote_datasource_impl.dart';
import '../data/datasources/remote/water_testing_remote_datasource.dart';
import '../data/datasources/remote/water_testing_remote_datasource_impl.dart';
import '../data/repositories/tanker_repository_impl.dart';
import '../data/repositories/water_type_repository_impl.dart';
import '../data/repositories/water_product_repository_impl.dart';
import '../data/repositories/water_tank_cleaning_repository_impl.dart';
import '../data/repositories/plumbing_repository_impl.dart';
import '../data/repositories/water_testing_repository_impl.dart';
import '../domain/repositories/tanker_repository.dart';
import '../domain/repositories/water_type_repository.dart';
import '../domain/repositories/water_product_repository.dart';
import '../domain/repositories/water_tank_cleaning_repository.dart';
import '../domain/repositories/plumbing_repository.dart';
import '../domain/repositories/water_testing_repository.dart';
import '../domain/usecases/get_tanker_capacities_usecase.dart';
import '../domain/usecases/get_water_types_usecase.dart';
import '../domain/usecases/get_water_products_usecase.dart';
import '../domain/usecases/get_water_tank_cleaning_detail_usecase.dart';
import '../domain/usecases/get_plumbing_options_usecase.dart';
import '../domain/usecases/submit_plumbing_booking_usecase.dart';
import '../domain/usecases/get_water_testing_packages_usecase.dart';
import '../domain/usecases/submit_water_testing_booking_usecase.dart';
import '../presentation/bloc/tanker_capacity_bloc.dart';
import '../presentation/bloc/water_type_bloc.dart';
import '../presentation/bloc/water_product_bloc.dart';
import '../presentation/bloc/water_tank_cleaning_bloc.dart';
import '../presentation/bloc/plumbing_options_bloc.dart';
import '../presentation/bloc/plumbing_booking_bloc.dart';
import '../presentation/bloc/water_testing_packages_bloc.dart';
import '../presentation/bloc/water_testing_booking_bloc.dart';

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
  sl.registerLazySingleton<WaterTankCleaningRemoteDatasource>(
    () => WaterTankCleaningRemoteDatasourceImpl(apiService: sl()),
  );
  sl.registerLazySingleton<WaterTankCleaningRepository>(
    () => WaterTankCleaningRepositoryImpl(remoteDatasource: sl()),
  );
  sl.registerFactory(() => GetWaterTankCleaningDetailUsecase(repository: sl()));
  sl.registerFactory(() => WaterTankCleaningBloc(usecase: sl()));
  sl.registerLazySingleton<PlumbingRemoteDatasource>(
    () => PlumbingRemoteDatasourceImpl(apiService: sl()),
  );
  sl.registerLazySingleton<PlumbingRepository>(
    () => PlumbingRepositoryImpl(remoteDatasource: sl()),
  );
  sl.registerFactory(() => GetPlumbingOptionsUsecase(repository: sl()));
  sl.registerFactory(() => SubmitPlumbingBookingUsecase(repository: sl()));
  sl.registerFactory(() => PlumbingOptionsBloc(usecase: sl()));
  sl.registerFactory(() => PlumbingBookingBloc(usecase: sl()));
  sl.registerLazySingleton<WaterTestingRemoteDatasource>(
    () => WaterTestingRemoteDatasourceImpl(apiService: sl()),
  );
  sl.registerLazySingleton<WaterTestingRepository>(
    () => WaterTestingRepositoryImpl(remoteDatasource: sl()),
  );
  sl.registerFactory(() => GetWaterTestingPackagesUsecase(repository: sl()));
  sl.registerFactory(() => SubmitWaterTestingBookingUsecase(repository: sl()));
  sl.registerFactory(() => WaterTestingPackagesBloc(usecase: sl()));
  sl.registerFactory(() => WaterTestingBookingBloc(usecase: sl()));
}
