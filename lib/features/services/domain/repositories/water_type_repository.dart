import 'package:dartz/dartz.dart';

import '../../../../core.dart';
import '../entities/water_type_entity.dart';

abstract interface class WaterTypeRepository {
  Future<Either<AppException, List<WaterTypeEntity>>> getWaterTypes();
}
