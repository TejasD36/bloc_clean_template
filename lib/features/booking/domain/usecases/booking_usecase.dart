import '../repositories/booking_repository.dart';

/// Use case for Booking.
class BookingUsecase {
  const BookingUsecase({
    required BookingRepository repository,
  }) : _repository = repository;

  final BookingRepository _repository;

  // TODO: Implement use case.
}