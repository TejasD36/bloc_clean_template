import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/get_water_types_usecase.dart';
import 'water_type_event.dart';
import 'water_type_state.dart';

class WaterTypeBloc extends Bloc<WaterTypeEvent, WaterTypeState> {
  WaterTypeBloc({required this.usecase})
    : super(const WaterTypeState.initial()) {
    on<WaterTypeStarted>(_onStarted);
  }

  final GetWaterTypesUsecase usecase;

  Future<void> _onStarted(
    WaterTypeStarted event,
    Emitter<WaterTypeState> emit,
  ) async {
    emit(const WaterTypeState.loading());
    final result = await usecase();
    result.fold(
      (failure) => emit(WaterTypeState.failure(message: failure.message)),
      (waterTypes) => emit(WaterTypeState.success(waterTypes: waterTypes)),
    );
  }
}
