import 'package:dartz/dartz.dart';

import '../../../../core.dart';
import '../../domain/entities/address_entity.dart';
import '../../domain/entities/address_input.dart';
import '../../domain/repositories/address_repository.dart';
import '../datasources/local/address_local_datasource.dart';
import '../datasources/remote/address_remote_datasource.dart';
import '../models/mappers/address_mapper.dart';

class AddressRepositoryImpl implements AddressRepository {
  const AddressRepositoryImpl({
    required this._addressRemoteDatasource,
    required this._addressLocalDatasource,
  });

  final AddressRemoteDatasource _addressRemoteDatasource;

  final AddressLocalDatasource _addressLocalDatasource;

  @override
  Future<Either<AppException, List<AddressEntity>>> getAddresses() {
    return _addressRemoteDatasource.getAddresses().mapEntity(
      (data) => data.toEntities(),
    );
  }

  @override
  Future<Either<AppException, AddressEntity>> saveAddress({
    int? id,
    required AddressInput input,
  }) {
    final request = input.toDto();
    final result = id == null
        ? _addressRemoteDatasource.addAddress(request)
        : _addressRemoteDatasource.updateAddress(id, request);
    return result.mapEntity((data) => data.toEntity());
  }
}
