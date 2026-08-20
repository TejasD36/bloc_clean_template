import '../../domain/repositories/profile_repository.dart';
import '../datasources/local/profile_local_datasource.dart';
import '../datasources/remote/profile_remote_datasource.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  const ProfileRepositoryImpl({required this._profileRemoteDatasource, required this._profileLocalDatasource});

  final ProfileRemoteDatasource _profileRemoteDatasource;

  final ProfileLocalDatasource _profileLocalDatasource;

  // TODO: Implement repository methods.
}
