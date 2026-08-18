import '../../../../../core.dart';
import '../../../common/services/business_settings_store.dart';
import '../../domain/usecases/get_splash_usecase.dart';
import 'splash_event.dart';
import 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, SplashState> {
  SplashBloc({required this._getSplashScreenUseCase, required this._businessSettingsStore}) : super(const SplashState.initial()) {
    on<SplashLoadRequested>(_onLoad);
  }

  final GetSplashScreenUseCase _getSplashScreenUseCase;
  final BusinessSettingsStore _businessSettingsStore;

  Future<void> _onLoad(SplashLoadRequested event, Emitter<SplashState> emit) async {
    emit(const SplashState.loading());

    await _getSplashScreenUseCase().when(
      onFailure: (failure) {
        emit(SplashState.failure(message: failure.message));
      },
      onSuccess: (data) {
        _businessSettingsStore.setSettings(data.businessSettings);

        emit(SplashState.loaded(data));
      },
    );
  }
}
