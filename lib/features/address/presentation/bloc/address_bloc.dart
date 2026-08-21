import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/address_usecase.dart';
import 'address_event.dart';
import 'address_state.dart';

class AddressBloc extends Bloc<AddressEvent, AddressState> {
  AddressBloc({required this._addressUsecase})
    : super(const AddressState.initial()) {
    on<AddressStarted>(_onStarted);
    on<AddressSaveRequested>(_onSaveRequested);
  }

  final AddressUsecase _addressUsecase;

  Future<void> _onStarted(
    AddressStarted event,
    Emitter<AddressState> emit,
  ) async {
    emit(const AddressState.loading());

    final result = await _addressUsecase.getAddresses();
    result.fold(
      (failure) => emit(AddressState.failure(message: failure.message)),
      (addresses) => emit(AddressState.success(addresses: addresses)),
    );
  }

  Future<void> _onSaveRequested(
    AddressSaveRequested event,
    Emitter<AddressState> emit,
  ) async {
    emit(const AddressState.loading());
    final result = await _addressUsecase.saveAddress(
      id: event.id,
      input: event.input,
    );
    result.fold(
      (failure) => emit(AddressState.failure(message: failure.message)),
      (address) => emit(AddressState.success(savedAddress: address)),
    );
  }
}
