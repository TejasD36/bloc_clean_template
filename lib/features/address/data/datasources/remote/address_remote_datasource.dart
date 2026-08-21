import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../models/dtos/address_dto.dart';

abstract interface class AddressRemoteDatasource {
  Future<Either<AppException, AddressListDto>> getAddresses();

  Future<Either<AppException, AddressMutationDto>> addAddress(
    AddressRequestDto request,
  );

  Future<Either<AppException, AddressMutationDto>> updateAddress(
    int id,
    AddressRequestDto request,
  );
}
