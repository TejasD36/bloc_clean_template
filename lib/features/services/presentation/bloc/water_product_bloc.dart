import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/get_water_products_usecase.dart';
import 'water_product_event.dart';
import 'water_product_state.dart';

class WaterProductBloc extends Bloc<WaterProductEvent, WaterProductState> {
  WaterProductBloc({required this.usecase})
    : super(const WaterProductState.initial()) {
    on<WaterProductStarted>(_onStarted);
  }

  final GetWaterProductsUsecase usecase;

  Future<void> _onStarted(
    WaterProductStarted event,
    Emitter<WaterProductState> emit,
  ) async {
    emit(const WaterProductState.loading());
    final result = await usecase();
    result.fold(
      (failure) => emit(WaterProductState.failure(message: failure.message)),
      (products) => emit(WaterProductState.success(products: products)),
    );
  }
}
