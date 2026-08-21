import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/get_tanker_capacities_usecase.dart';
import 'tanker_capacity_event.dart';
import 'tanker_capacity_state.dart';

class TankerCapacityBloc
    extends Bloc<TankerCapacityEvent, TankerCapacityState> {
  TankerCapacityBloc({required this.usecase})
    : super(const TankerCapacityState.initial()) {
    on<TankerCapacityStarted>(_onStarted);
  }

  final GetTankerCapacitiesUsecase usecase;

  Future<void> _onStarted(
    TankerCapacityStarted event,
    Emitter<TankerCapacityState> emit,
  ) async {
    emit(const TankerCapacityState.loading());
    final result = await usecase();
    result.fold(
      (failure) => emit(TankerCapacityState.failure(message: failure.message)),
      (capacities) => emit(TankerCapacityState.success(capacities: capacities)),
    );
  }
}
