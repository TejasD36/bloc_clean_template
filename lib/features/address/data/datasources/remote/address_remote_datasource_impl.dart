import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../constants/address_endpoints.dart';
import '../../models/dtos/address_dto.dart';
import 'address_remote_datasource.dart';

class AddressRemoteDatasourceImpl implements AddressRemoteDatasource {
  const AddressRemoteDatasourceImpl({required this.apiService});

  final BaseApiService apiService;

  @override
  Future<Either<AppException, AddressListDto>> getAddresses() {
    return apiService
        .getApi<AddressListDto>(
          AddressEndpoints.list,
          const ObjectMapper(AddressListDto.fromJson),
        )
        .mapEntity((data) => data);
  }

  @override
  Future<Either<AppException, AddressMutationDto>> addAddress(
    AddressRequestDto request,
  ) {
    return apiService
        .postApi<AddressMutationDto>(
          AddressEndpoints.add,
          const ObjectMapper(AddressMutationDto.fromJson),
          body: request.toJson(),
        )
        .mapEntity((data) => data);
  }

  @override
  Future<Either<AppException, AddressMutationDto>> updateAddress(
    int id,
    AddressRequestDto request,
  ) {
    return apiService
        .postApi<AddressMutationDto>(
          AddressEndpoints.edit(id),
          const ObjectMapper(AddressMutationDto.fromJson),
          body: request.toJson(),
        )
        .mapEntity((data) => data);
  }
}
