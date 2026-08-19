import 'package:freezed_annotation/freezed_annotation.dart';

part 'address_state.freezed.dart';

@freezed
sealed class AddressState with _$AddressState {
  const factory AddressState.initial() = AddressInitial;

  const factory AddressState.loading() = AddressLoading;

  const factory AddressState.success() = AddressSuccess;

  const factory AddressState.failure({
    required String message,
  }) = AddressFailure;
}