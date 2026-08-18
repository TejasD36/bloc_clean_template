import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_entity.freezed.dart';

@freezed
class BookingEntity with _$BookingEntity {
  const factory BookingEntity() = _BookingEntity;
}