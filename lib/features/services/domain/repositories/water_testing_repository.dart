import 'package:dartz/dartz.dart';

import '../../../../core.dart';
import '../entities/water_testing_package_entity.dart';

abstract interface class WaterTestingRepository {
  Future<Either<AppException, WaterTestingPackagesEntity>> getPackages();

  Future<Either<AppException, String>> submitBooking({
    required int offeringId,
    int? addressId,
    required String sampleType,
    String? selectedPlan,
    required double totalPrice,
  });
}
