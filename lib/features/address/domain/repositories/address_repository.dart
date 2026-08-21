import 'package:dartz/dartz.dart';

import '../../../../core.dart';
import '../entities/address_entity.dart';
import '../entities/address_input.dart';

/// Contract for Address operations.
abstract interface class AddressRepository {
  Future<Either<AppException, List<AddressEntity>>> getAddresses();

  Future<Either<AppException, AddressEntity>> saveAddress({
    int? id,
    required AddressInput input,
  });
}
