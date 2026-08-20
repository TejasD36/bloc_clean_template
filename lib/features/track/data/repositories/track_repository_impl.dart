import '../../domain/repositories/track_repository.dart';
import '../datasources/local/track_local_datasource.dart';
import '../datasources/remote/track_remote_datasource.dart';

class TrackRepositoryImpl implements TrackRepository {
  const TrackRepositoryImpl({required this._trackRemoteDatasource, required this._trackLocalDatasource});

  final TrackRemoteDatasource _trackRemoteDatasource;

  final TrackLocalDatasource _trackLocalDatasource;

  // TODO: Implement repository methods.
}
