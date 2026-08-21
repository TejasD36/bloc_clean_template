import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../models/dtos/water_testing_packages_dto.dart';

abstract interface class WaterTestingRemoteDatasource {
  Future<Either<AppException, WaterTestingPackagesDto>> getPackages();

  Future<Either<AppException, String>> submitBooking({
    required int offeringId,
    int? addressId,
    required String sampleType,
    String? selectedPlan,
    required double totalPrice,
  });
}
