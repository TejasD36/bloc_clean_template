import 'package:dartz/dartz.dart';

import '../../../../core.dart';
import '../../domain/entities/water_tank_cleaning_entity.dart';
import '../../domain/repositories/water_tank_cleaning_repository.dart';
import '../datasources/remote/water_tank_cleaning_remote_datasource.dart';
import '../models/mappers/water_tank_cleaning_mapper.dart';

class WaterTankCleaningRepositoryImpl implements WaterTankCleaningRepository {
  const WaterTankCleaningRepositoryImpl({required this.remoteDatasource});

  final WaterTankCleaningRemoteDatasource remoteDatasource;

  @override
  Future<Either<AppException, WaterTankCleaningDetailEntity>> getDetail() {
    return remoteDatasource.getDetail().mapEntity((data) => data.toEntity());
  }
}
