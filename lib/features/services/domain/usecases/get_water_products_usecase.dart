import 'package:dartz/dartz.dart';

import '../../../../core.dart';
import '../entities/water_product_entity.dart';
import '../repositories/water_product_repository.dart';

class GetWaterProductsUsecase {
  const GetWaterProductsUsecase({required this.repository});

  final WaterProductRepository repository;

  Future<Either<AppException, List<WaterProductEntity>>> call() =>
      repository.getProducts();
}
