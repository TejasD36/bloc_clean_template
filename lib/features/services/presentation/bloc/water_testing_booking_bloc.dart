import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/submit_water_testing_booking_usecase.dart';

sealed class WaterTestingBookingState {
  const WaterTestingBookingState();
}

class WaterTestingBookingInitial extends WaterTestingBookingState {
  const WaterTestingBookingInitial();
}

class WaterTestingBookingSubmitting extends WaterTestingBookingState {
  const WaterTestingBookingSubmitting();
}

class WaterTestingBookingSuccess extends WaterTestingBookingState {
  const WaterTestingBookingSuccess(this.message);

  final String message;
}

class WaterTestingBookingFailure extends WaterTestingBookingState {
  const WaterTestingBookingFailure(this.message);

  final String message;
}

class WaterTestingBookingBloc extends Cubit<WaterTestingBookingState> {
  WaterTestingBookingBloc({required this.usecase})
    : super(const WaterTestingBookingInitial());

  final SubmitWaterTestingBookingUsecase usecase;

  Future<void> submit({
    required int offeringId,
    int? addressId,
    required String sampleType,
    String? selectedPlan,
    required double totalPrice,
  }) async {
    emit(const WaterTestingBookingSubmitting());
    final result = await usecase(
      offeringId: offeringId,
      addressId: addressId,
      sampleType: sampleType,
      selectedPlan: selectedPlan,
      totalPrice: totalPrice,
    );
    result.fold(
      (failure) => emit(WaterTestingBookingFailure(failure.message)),
      (message) => emit(WaterTestingBookingSuccess(message)),
    );
  }
}
