import '../../../../core.dart';
import '../../domain/usecases/check_authentication_usecase.dart';
import '../../domain/usecases/resend_otp_usecase.dart';
import '../../domain/usecases/send_otp_usecase.dart';
import '../../domain/usecases/verify_otp_usecase.dart';
import 'auth_event.dart';
import 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required this._sendOtpUseCase,
    required this._resendOtpUseCase,
    required this._checkAuthenticationUseCase,
    required this._verifyOtpUseCase,
  }) : super(const AuthState.initial()) {
    on<SendOtpRequested>(_onSendOtp);
    on<ResendOtpRequested>(_onResendOtp);
    on<CheckAuthentication>(_onCheckAuthentication);
    on<VerifyOtpRequested>(_onVerifyOtp);
  }

  final SendOtpUseCase _sendOtpUseCase;
  final ResendOtpUseCase _resendOtpUseCase;
  final CheckAuthenticationUseCase _checkAuthenticationUseCase;
  final VerifyOtpUseCase _verifyOtpUseCase;

  Future<void> _onCheckAuthentication(
    CheckAuthentication event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());

    await _checkAuthenticationUseCase().when(
      onFailure: (failure) {
        emit(AuthState.failure(message: failure.message));
      },
      onSuccess: (isAuthenticated) {
        emit(
          isAuthenticated
              ? const AuthState.authenticated()
              : const AuthState.unauthenticated(),
        );
      },
    );
  }

  Future<void> _onSendOtp(
    SendOtpRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());

    await _sendOtpUseCase(
      phoneNumber: event.phoneNumber,
      name: event.name,
    ).when(
      onFailure: (failure) {
        emit(AuthState.failure(message: failure.message));
      },
      onSuccess: (data) {
        emit(AuthState.otpSent(data));
      },
    );
  }

  Future<void> _onResendOtp(
    ResendOtpRequested event,
    Emitter<AuthState> emit,
  ) async {
    await _resendOtpUseCase(phoneNumber: event.phoneNumber).when(
      onFailure: (failure) {
        emit(AuthState.failure(message: failure.message));
      },
      onSuccess: (_) {
        emit(const AuthState.otpResent());
      },
    );
  }

  Future<void> _onVerifyOtp(
    VerifyOtpRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());

    await _verifyOtpUseCase(
      phoneNumber: event.phoneNumber,
      otp: event.otp,
      firebaseToken: event.firebaseToken,
    ).when(
      onFailure: (failure) {
        emit(AuthState.failure(message: failure.message));
      },
      onSuccess: (_) {
        emit(const AuthState.authenticated());
      },
    );
  }
}
