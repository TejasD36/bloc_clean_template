import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/submit_plumbing_booking_usecase.dart';

sealed class PlumbingBookingState {
  const PlumbingBookingState();
}

class PlumbingBookingInitial extends PlumbingBookingState {
  const PlumbingBookingInitial();
}

class PlumbingBookingSubmitting extends PlumbingBookingState {
  const PlumbingBookingSubmitting();
}

class PlumbingBookingSuccess extends PlumbingBookingState {
  const PlumbingBookingSuccess(this.message);

  final String message;
}

class PlumbingBookingFailure extends PlumbingBookingState {
  const PlumbingBookingFailure(this.message);

  final String message;
}

class PlumbingBookingBloc extends Cubit<PlumbingBookingState> {
  PlumbingBookingBloc({required this.usecase})
    : super(const PlumbingBookingInitial());

  final SubmitPlumbingBookingUsecase usecase;

  Future<void> submit({
    required int offeringId,
    required int addressId,
    required List<String> optionIds,
  }) async {
    emit(const PlumbingBookingSubmitting());
    final result = await usecase(
      offeringId: offeringId,
      addressId: addressId,
      optionIds: optionIds,
    );
    result.fold(
      (failure) => emit(PlumbingBookingFailure(failure.message)),
      (message) => emit(PlumbingBookingSuccess(message)),
    );
  }
}
