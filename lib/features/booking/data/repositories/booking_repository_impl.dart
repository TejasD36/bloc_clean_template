import '../../domain/repositories/booking_repository.dart';
import '../datasources/local/booking_local_datasource.dart';
import '../datasources/remote/booking_remote_datasource.dart';

class BookingRepositoryImpl implements BookingRepository {
  const BookingRepositoryImpl({required this._bookingRemoteDatasource, required this._bookingLocalDatasource});

  final BookingRemoteDatasource _bookingRemoteDatasource;

  final BookingLocalDatasource _bookingLocalDatasource;

  // TODO: Implement repository methods.
}
