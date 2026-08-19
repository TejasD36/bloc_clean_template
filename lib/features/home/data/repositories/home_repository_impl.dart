import '../../domain/repositories/home_repository.dart';
import '../datasources/local/home_local_datasource.dart';
import '../datasources/remote/home_remote_datasource.dart';

class HomeRepositoryImpl implements HomeRepository {
  const HomeRepositoryImpl({required this._homeRemoteDatasource, required this._homeLocalDatasource});

  final HomeRemoteDatasource _homeRemoteDatasource;

  final HomeLocalDatasource _homeLocalDatasource;

  // TODO: Implement repository methods.
}
