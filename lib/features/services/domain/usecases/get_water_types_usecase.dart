import 'package:dartz/dartz.dart';

import '../../../../core.dart';
import '../entities/water_type_entity.dart';
import '../repositories/water_type_repository.dart';

class GetWaterTypesUsecase {
  const GetWaterTypesUsecase({required this.repository});

  final WaterTypeRepository repository;

  Future<Either<AppException, List<WaterTypeEntity>>> call() {
    return repository.getWaterTypes();
  }
}
