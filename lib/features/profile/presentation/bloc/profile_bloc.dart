import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/usecases/profile_usecase.dart';
import 'profile_event.dart';
import 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  ProfileBloc({required this._profileUsecase}) : super(const ProfileState.initial()) {
    on<ProfileStarted>(_onStarted);
  }

  final ProfileUsecase _profileUsecase;

  Future<void> _onStarted(ProfileStarted event, Emitter<ProfileState> emit) async {
    emit(const ProfileState.loading());

    try {
      // TODO: Call use case.
      // await _profileUsecase();

      emit(const ProfileState.success());
    } catch (e) {
      emit(ProfileState.failure(message: e.toString()));
    }
  }
}
