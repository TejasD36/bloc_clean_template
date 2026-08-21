import 'package:dartz/dartz.dart';

import '../../../../core.dart';
import '../entities/plumbing_service_option_entity.dart';

abstract interface class PlumbingRepository {
  Future<Either<AppException, PlumbingServiceOptionsEntity>> getOptions();

  Future<Either<AppException, String>> submitBooking({
    required int offeringId,
    required int addressId,
    required List<String> optionIds,
  });
}
