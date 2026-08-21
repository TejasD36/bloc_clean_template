import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/address_input.dart';

part 'address_event.freezed.dart';

@freezed
sealed class AddressEvent with _$AddressEvent {
  const factory AddressEvent.started() = AddressStarted;

  const factory AddressEvent.save({int? id, required AddressInput input}) =
      AddressSaveRequested;
}
