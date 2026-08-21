import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../domain/entities/home_entity.dart';
import '../../domain/repositories/home_repository.dart';
import '../datasources/local/home_local_datasource.dart';
import '../datasources/remote/home_remote_datasource.dart';
import '../models/mappers/home_mapper.dart';

class HomeRepositoryImpl implements HomeRepository {
  const HomeRepositoryImpl({
    required HomeRemoteDatasource homeRemoteDatasource,
    required HomeLocalDatasource homeLocalDatasource,
  }) : _homeRemoteDatasource = homeRemoteDatasource,
       _homeLocalDatasource = homeLocalDatasource;

  final HomeRemoteDatasource _homeRemoteDatasource;

  final HomeLocalDatasource _homeLocalDatasource;

  @override
  Future<Either<AppException, HomeEntity>> getHomeScreen() {
    return _homeRemoteDatasource.getHomeScreen().mapEntity(
      (dto) => dto.toEntity(),
    );
  }
}
