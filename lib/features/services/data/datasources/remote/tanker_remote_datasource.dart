import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../models/dtos/tanker_capacity_dto.dart';

abstract interface class TankerRemoteDatasource {
  Future<Either<AppException, TankerCapacitiesDto>> getCapacities();
}
