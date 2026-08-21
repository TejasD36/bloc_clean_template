import 'package:dartz/dartz.dart';

import '../../../../core.dart';
import '../../domain/entities/water_product_entity.dart';
import '../../domain/repositories/water_product_repository.dart';
import '../datasources/remote/water_product_remote_datasource.dart';
import '../models/mappers/water_product_mapper.dart';

class WaterProductRepositoryImpl implements WaterProductRepository {
  const WaterProductRepositoryImpl({required this.remoteDatasource});

  final WaterProductRemoteDatasource remoteDatasource;

  @override
  Future<Either<AppException, List<WaterProductEntity>>> getProducts() {
    return remoteDatasource.getProducts().mapEntity(
      (data) => data.toEntities(),
    );
  }
}
