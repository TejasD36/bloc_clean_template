import '../../domain/repositories/address_repository.dart';
import '../datasources/local/address_local_datasource.dart';
import '../datasources/remote/address_remote_datasource.dart';

class AddressRepositoryImpl implements AddressRepository {
  const AddressRepositoryImpl({required this._addressRemoteDatasource, required this._addressLocalDatasource});

  final AddressRemoteDatasource _addressRemoteDatasource;

  final AddressLocalDatasource _addressLocalDatasource;

  // TODO: Implement repository methods.
}
