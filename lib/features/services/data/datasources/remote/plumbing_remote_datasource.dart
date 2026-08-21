import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../models/dtos/plumbing_service_options_dto.dart';

abstract interface class PlumbingRemoteDatasource {
  Future<Either<AppException, PlumbingServiceOptionsDto>> getOptions();

  Future<Either<AppException, String>> submitBooking({
    required int offeringId,
    required int addressId,
    required List<String> optionIds,
  });
}
