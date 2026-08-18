import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_dto.freezed.dart';
part 'booking_dto.g.dart';

@freezed
sealed class BookingDto with _$BookingDto {
  const factory BookingDto() = _BookingDto;

  factory BookingDto.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$BookingDtoFromJson(json);
}