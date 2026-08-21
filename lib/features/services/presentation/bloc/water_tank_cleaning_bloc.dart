import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/get_water_tank_cleaning_detail_usecase.dart';
import 'water_tank_cleaning_event.dart';
import 'water_tank_cleaning_state.dart';

class WaterTankCleaningBloc
    extends Bloc<WaterTankCleaningEvent, WaterTankCleaningState> {
  WaterTankCleaningBloc({required this.usecase})
    : super(const WaterTankCleaningState.initial()) {
    on<WaterTankCleaningStarted>(_onStarted);
  }

  final GetWaterTankCleaningDetailUsecase usecase;

  Future<void> _onStarted(
    WaterTankCleaningStarted event,
    Emitter<WaterTankCleaningState> emit,
  ) async {
    emit(const WaterTankCleaningState.loading());
    final result = await usecase();
    result.fold(
      (failure) =>
          emit(WaterTankCleaningState.failure(message: failure.message)),
      (detail) => emit(WaterTankCleaningState.success(detail: detail)),
    );
  }
}
