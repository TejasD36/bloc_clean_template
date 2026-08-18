import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/home_usecase.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({
    required HomeUsecase homeUsecase,
  })  : _homeUsecase = homeUsecase,
        super(const HomeState.initial()) {
    on<HomeStarted>(_onStarted);
  }

   final HomeUsecase _homeUsecase;

  Future<void> _onStarted(
    HomeStarted event,
    Emitter<HomeState> emit,
  ) async {
    emit(const HomeState.loading());

    try {
      // TODO: Call use case.
      // await _homeUsecase();

      emit(const HomeState.success());
    } catch (e) {
      emit(
        HomeState.failure(
          message: e.toString(),
        ),
      );
    }
  }
}