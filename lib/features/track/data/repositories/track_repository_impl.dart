import '../../domain/repositories/track_repository.dart';
import '../datasources/local/track_local_datasource.dart';
import '../datasources/remote/track_remote_datasource.dart';

class TrackRepositoryImpl implements TrackRepository {
  const TrackRepositoryImpl({
    required TrackRemoteDatasource trackRemoteDatasource,
    required TrackLocalDatasource trackLocalDatasource,
  })  : _trackRemoteDatasource = trackRemoteDatasource,
        _trackLocalDatasource = trackLocalDatasource;

  final TrackRemoteDatasource _trackRemoteDatasource;

  final TrackLocalDatasource _trackLocalDatasource;

  // TODO: Implement repository methods.
}