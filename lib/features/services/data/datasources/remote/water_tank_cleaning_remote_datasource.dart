import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../models/dtos/water_tank_cleaning_dto.dart';

abstract interface class WaterTankCleaningRemoteDatasource {
  Future<Either<AppException, WaterTankCleaningDetailDto>> getDetail();
}
