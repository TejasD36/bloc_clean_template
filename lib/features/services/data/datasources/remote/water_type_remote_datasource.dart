import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../models/dtos/water_type_dto.dart';

abstract interface class WaterTypeRemoteDatasource {
  Future<Either<AppException, WaterTypesDto>> getWaterTypes();
}
