import '../dtos/booking_dto.dart';
import '../../../domain/entities/booking_entity.dart';

extension BookingMapper on BookingDto {
  BookingEntity toEntity() {
    // TODO: Map DTO to Entity.
    return const BookingEntity();
  }
}