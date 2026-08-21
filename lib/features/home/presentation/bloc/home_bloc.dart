import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/home_usecase.dart';
import 'home_event.dart';
import 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc({required this._homeUsecase}) : super(const HomeState.initial()) {
    on<HomeStarted>(_onStarted);
  }

  final HomeUsecase _homeUsecase;

  Future<void> _onStarted(HomeStarted event, Emitter<HomeState> emit) async {
    emit(const HomeState.loading());

    final result = await _homeUsecase();

    result.fold(
      (failure) => emit(HomeState.failure(message: failure.message)),
      (home) => emit(HomeState.success(home: home)),
    );
  }
}
