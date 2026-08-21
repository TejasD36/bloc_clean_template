import 'package:dartz/dartz.dart';

import '../../../../core.dart';
import '../../domain/entities/water_type_entity.dart';
import '../../domain/repositories/water_type_repository.dart';
import '../datasources/remote/water_type_remote_datasource.dart';
import '../models/mappers/water_type_mapper.dart';

class WaterTypeRepositoryImpl implements WaterTypeRepository {
  const WaterTypeRepositoryImpl({required this.remoteDatasource});

  final WaterTypeRemoteDatasource remoteDatasource;

  @override
  Future<Either<AppException, List<WaterTypeEntity>>> getWaterTypes() {
    return remoteDatasource.getWaterTypes().mapEntity(
      (dto) => dto.toEntities(),
    );
  }
}
