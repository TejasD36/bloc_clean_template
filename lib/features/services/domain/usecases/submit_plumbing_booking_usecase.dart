import 'package:dartz/dartz.dart';

import '../../../../core.dart';
import '../repositories/plumbing_repository.dart';

class SubmitPlumbingBookingUsecase {
  const SubmitPlumbingBookingUsecase({required this.repository});

  final PlumbingRepository repository;

  Future<Either<AppException, String>> call({
    required int offeringId,
    required int addressId,
    required List<String> optionIds,
  }) => repository.submitBooking(
    offeringId: offeringId,
    addressId: addressId,
    optionIds: optionIds,
  );
}
