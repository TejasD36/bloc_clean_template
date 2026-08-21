import 'package:dartz/dartz.dart';

import '../../../../core.dart';
import '../entities/tanker_capacity_entity.dart';
import '../repositories/tanker_repository.dart';

class GetTankerCapacitiesUsecase {
  const GetTankerCapacitiesUsecase({required this.repository});

  final TankerRepository repository;

  Future<Either<AppException, List<TankerCapacityEntity>>> call() {
    return repository.getCapacities();
  }
}
