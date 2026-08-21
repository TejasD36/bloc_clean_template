import 'package:dartz/dartz.dart';

import '../../../../core.dart';
import '../entities/address_entity.dart';
import '../entities/address_input.dart';
import '../repositories/address_repository.dart';

/// Use case for Address.
class AddressUsecase {
  const AddressUsecase({required this._repository});

  final AddressRepository _repository;

  Future<Either<AppException, List<AddressEntity>>> getAddresses() {
    return _repository.getAddresses();
  }

  Future<Either<AppException, AddressEntity>> saveAddress({
    int? id,
    required AddressInput input,
  }) {
    return _repository.saveAddress(id: id, input: input);
  }
}
