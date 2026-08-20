import '../../../domain/entities/booking_entity.dart';
import '../dtos/booking_dto.dart';

extension BookingMapper on BookingDto {
  BookingEntity toEntity() {
    // TODO: Map DTO to Entity.
    return const BookingEntity();
  }
}
