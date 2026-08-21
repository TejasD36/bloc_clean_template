import 'package:dartz/dartz.dart';

import '../../../../core.dart';
import '../entities/water_tank_cleaning_entity.dart';

abstract interface class WaterTankCleaningRepository {
  Future<Either<AppException, WaterTankCleaningDetailEntity>> getDetail();
}
