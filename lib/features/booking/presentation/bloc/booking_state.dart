import 'package:freezed_annotation/freezed_annotation.dart';

part 'booking_state.freezed.dart';

@freezed
sealed class BookingState with _$BookingState {
  const factory BookingState.initial() = BookingInitial;

  const factory BookingState.loading() = BookingLoading;

  const factory BookingState.success() = BookingSuccess;

  const factory BookingState.failure({
    required String message,
  }) = BookingFailure;
}