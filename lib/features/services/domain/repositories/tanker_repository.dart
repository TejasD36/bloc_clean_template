import 'package:dartz/dartz.dart';

import '../../../../core.dart';
import '../entities/tanker_capacity_entity.dart';

abstract interface class TankerRepository {
  Future<Either<AppException, List<TankerCapacityEntity>>> getCapacities();
}
