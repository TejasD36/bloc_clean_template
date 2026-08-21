import 'package:dartz/dartz.dart';

import '../../../../core.dart';
import '../entities/water_tank_cleaning_entity.dart';
import '../repositories/water_tank_cleaning_repository.dart';

class GetWaterTankCleaningDetailUsecase {
  const GetWaterTankCleaningDetailUsecase({required this.repository});

  final WaterTankCleaningRepository repository;

  Future<Either<AppException, WaterTankCleaningDetailEntity>> call() =>
      repository.getDetail();
}
