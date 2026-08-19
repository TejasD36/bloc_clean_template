import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/address_usecase.dart';
import 'address_event.dart';
import 'address_state.dart';

class AddressBloc extends Bloc<AddressEvent, AddressState> {
  AddressBloc({required this._addressUsecase}) : super(const AddressState.initial()) {
    on<AddressStarted>(_onStarted);
  }

  final AddressUsecase _addressUsecase;

  Future<void> _onStarted(AddressStarted event, Emitter<AddressState> emit) async {
    emit(const AddressState.loading());

    try {
      // TODO: Call use case.
      // await _addressUsecase();

      emit(const AddressState.success());
    } catch (e) {
      emit(AddressState.failure(message: e.toString()));
    }
  }
}
