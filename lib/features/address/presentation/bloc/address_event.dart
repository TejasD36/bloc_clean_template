import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_event.freezed.dart';

@freezed
sealed class AddressEvent with _$AddressEvent {
  const factory AddressEvent.started() = AddressStarted;
}