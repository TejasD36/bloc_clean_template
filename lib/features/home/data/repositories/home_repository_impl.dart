import '../../domain/repositories/home_repository.dart';
import '../datasources/local/home_local_datasource.dart';
import '../datasources/remote/home_remote_datasource.dart';

class HomeRepositoryImpl implements HomeRepository {
  const HomeRepositoryImpl({
    required HomeRemoteDatasource homeRemoteDatasource,
    required HomeLocalDatasource homeLocalDatasource,
  })  : _homeRemoteDatasource = homeRemoteDatasource,
        _homeLocalDatasource = homeLocalDatasource;

  final HomeRemoteDatasource _homeRemoteDatasource;

  final HomeLocalDatasource _homeLocalDatasource;

  // TODO: Implement repository methods.
}