import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../models/dtos/water_product_dto.dart';

abstract interface class WaterProductRemoteDatasource {
  Future<Either<AppException, WaterProductsDto>> getProducts();
}
