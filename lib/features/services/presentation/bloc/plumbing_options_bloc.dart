import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/plumbing_service_option_entity.dart';
import '../../domain/usecases/get_plumbing_options_usecase.dart';

sealed class PlumbingOptionsState {
  const PlumbingOptionsState();
}

class PlumbingOptionsInitial extends PlumbingOptionsState {
  const PlumbingOptionsInitial();
}

class PlumbingOptionsLoading extends PlumbingOptionsState {
  const PlumbingOptionsLoading();
}

class PlumbingOptionsSuccess extends PlumbingOptionsState {
  const PlumbingOptionsSuccess(this.options);

  final List<PlumbingServiceOptionEntity> options;
}

class PlumbingOptionsFailure extends PlumbingOptionsState {
  const PlumbingOptionsFailure(this.message);

  final String message;
}

class PlumbingOptionsBloc extends Cubit<PlumbingOptionsState> {
  PlumbingOptionsBloc({required this.usecase})
    : super(const PlumbingOptionsInitial());

  final GetPlumbingOptionsUsecase usecase;

  Future<void> load() async {
    emit(const PlumbingOptionsLoading());
    final result = await usecase();
    result.fold(
      (failure) => emit(PlumbingOptionsFailure(failure.message)),
      (data) => emit(PlumbingOptionsSuccess(data.options)),
    );
  }
}
