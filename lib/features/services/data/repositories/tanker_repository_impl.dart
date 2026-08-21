import 'package:dartz/dartz.dart';

import '../../../../core.dart';
import '../../domain/entities/tanker_capacity_entity.dart';
import '../../domain/repositories/tanker_repository.dart';
import '../datasources/remote/tanker_remote_datasource.dart';
import '../models/mappers/tanker_capacity_mapper.dart';

class TankerRepositoryImpl implements TankerRepository {
  const TankerRepositoryImpl({required this.remoteDatasource});

  final TankerRemoteDatasource remoteDatasource;

  @override
  Future<Either<AppException, List<TankerCapacityEntity>>> getCapacities() {
    return remoteDatasource.getCapacities().mapEntity(
      (dto) => dto.toEntities(),
    );
  }
}
