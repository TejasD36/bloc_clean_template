import 'package:dartz/dartz.dart';

import '../../../../core.dart';
import '../entities/water_product_entity.dart';

abstract interface class WaterProductRepository {
  Future<Either<AppException, List<WaterProductEntity>>> getProducts();
}
