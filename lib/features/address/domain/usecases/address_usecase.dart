import '../repositories/address_repository.dart';

/// Use case for Address.
class AddressUsecase {
  const AddressUsecase({
    required AddressRepository repository,
  }) : _repository = repository;

  final AddressRepository _repository;

  // TODO: Implement use case.
}