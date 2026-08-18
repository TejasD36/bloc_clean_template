import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/track_usecase.dart';
import 'track_event.dart';
import 'track_state.dart';

class TrackBloc extends Bloc<TrackEvent, TrackState> {
  TrackBloc({
    required TrackUsecase trackUsecase,
  })  : _trackUsecase = trackUsecase,
        super(const TrackState.initial()) {
    on<TrackStarted>(_onStarted);
  }

   final TrackUsecase _trackUsecase;

  Future<void> _onStarted(
    TrackStarted event,
    Emitter<TrackState> emit,
  ) async {
    emit(const TrackState.loading());

    try {
      // TODO: Call use case.
      // await _trackUsecase();

      emit(const TrackState.success());
    } catch (e) {
      emit(
        TrackState.failure(
          message: e.toString(),
        ),
      );
    }
  }
}