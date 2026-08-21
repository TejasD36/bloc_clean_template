import 'package:dartz/dartz.dart';

import '../../../../core.dart';
import '../entities/water_testing_package_entity.dart';
import '../repositories/water_testing_repository.dart';

class GetWaterTestingPackagesUsecase {
  const GetWaterTestingPackagesUsecase({required this.repository});

  final WaterTestingRepository repository;

  Future<Either<AppException, WaterTestingPackagesEntity>> call() =>
      repository.getPackages();
}
