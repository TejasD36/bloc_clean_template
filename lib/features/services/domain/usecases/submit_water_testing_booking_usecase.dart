import 'package:dartz/dartz.dart';

import '../../../../core.dart';
import '../repositories/water_testing_repository.dart';

class SubmitWaterTestingBookingUsecase {
  const SubmitWaterTestingBookingUsecase({required this.repository});

  final WaterTestingRepository repository;

  Future<Either<AppException, String>> call({
    required int offeringId,
    int? addressId,
    required String sampleType,
    String? selectedPlan,
    required double totalPrice,
  }) => repository.submitBooking(
    offeringId: offeringId,
    addressId: addressId,
    sampleType: sampleType,
    selectedPlan: selectedPlan,
    totalPrice: totalPrice,
  );
}
