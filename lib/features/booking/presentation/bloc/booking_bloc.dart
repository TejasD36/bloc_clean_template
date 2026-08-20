import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/booking_usecase.dart';
import 'booking_event.dart';
import 'booking_state.dart';

class BookingBloc extends Bloc<BookingEvent, BookingState> {
  BookingBloc({required this._bookingUsecase}) : super(const BookingState.initial()) {
    on<BookingStarted>(_onStarted);
  }

  final BookingUsecase _bookingUsecase;

  Future<void> _onStarted(BookingStarted event, Emitter<BookingState> emit) async {
    emit(const BookingState.loading());

    try {
      // TODO: Call use case.
      // await _bookingUsecase();

      emit(const BookingState.success());
    } catch (e) {
      emit(BookingState.failure(message: e.toString()));
    }
  }
}
