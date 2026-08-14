import '../../../../../core.dart';
import '../../xcore.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({
    required this._getCurrentUserUseCase,
    required this._loginUseCase,
    required this._registerUseCase,
    required this._forgotPasswordUseCase,
    required this._resetPasswordUseCase,
    required this._changePasswordUseCase,
    required this._signOutUseCase,
  }) : super(const AuthState.initial()) {
    on<CheckAuthentication>(_onCheckAuthentication);
    on<LoginRequested>(_onLogin);
    on<RegisterRequested>(_onRegister);
    on<ForgotPasswordRequested>(_onForgotPassword);
    on<ResetPasswordRequested>(_onResetPassword);
    on<ChangePasswordRequested>(_onChangePassword);
    on<SignOut>(_onSignOut);
  }

  final GetCurrentUserUseCase _getCurrentUserUseCase;
  final LoginUseCase _loginUseCase;
  final RegisterUseCase _registerUseCase;
  final ForgotPasswordUseCase _forgotPasswordUseCase;
  final ResetPasswordUseCase _resetPasswordUseCase;
  final ChangePasswordUseCase _changePasswordUseCase;
  final SignOutUseCase _signOutUseCase;

  Future<void> _onCheckAuthentication(
    CheckAuthentication event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());

    await _getCurrentUserUseCase().when(
      onFailure: (failure) {
        emit(AuthState.failure(message: failure.message));
      },
      onSuccess: (user) {
        if (user == null) {
          emit(const AuthState.unauthenticated());
          return;
        }
        emit(AuthState.authenticated(user));
      },
    );
  }

  Future<void> _onResetPassword(
    ResetPasswordRequested event,
    Emitter<AuthState> emit,
  ) async {
    final authenticatedUser = state is AuthAuthenticated
        ? (state as AuthAuthenticated).user
        : null;
    emit(const AuthState.loading());
    await _resetPasswordUseCase(
      email: event.email,
      password: event.password,
    ).when(
      onFailure: (failure) => emit(AuthState.failure(message: failure.message)),
      onSuccess: (_) => emit(AuthState.passwordReset(authenticatedUser)),
    );
  }

  Future<void> _onChangePassword(
    ChangePasswordRequested event,
    Emitter<AuthState> emit,
  ) async {
    final authenticatedUser = state is AuthAuthenticated
        ? (state as AuthAuthenticated).user
        : null;
    emit(const AuthState.loading());
    await _changePasswordUseCase(
      currentPassword: event.currentPassword,
      newPassword: event.newPassword,
    ).when(
      onFailure: (failure) => emit(AuthState.failure(message: failure.message)),
      onSuccess: (_) => emit(AuthState.passwordChanged(authenticatedUser)),
    );
  }

  Future<void> _onLogin(LoginRequested event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());
    await _loginUseCase(event.credentials).when(
      onFailure: (failure) => emit(AuthState.failure(message: failure.message)),
      onSuccess: (user) => emit(AuthState.authenticated(user)),
    );
  }

  Future<void> _onRegister(
    RegisterRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    await _registerUseCase(event.credentials).when(
      onFailure: (failure) => emit(AuthState.failure(message: failure.message)),
      onSuccess: (user) => emit(AuthState.authenticated(user)),
    );
  }

  Future<void> _onForgotPassword(
    ForgotPasswordRequested event,
    Emitter<AuthState> emit,
  ) async {
    emit(const AuthState.loading());
    await _forgotPasswordUseCase(event.email).when(
      onFailure: (failure) => emit(AuthState.failure(message: failure.message)),
      onSuccess: (_) => emit(const AuthState.passwordResetRequested()),
    );
  }

  Future<void> _onSignOut(SignOut event, Emitter<AuthState> emit) async {
    emit(const AuthState.loading());

    await _signOutUseCase().when(
      onFailure: (failure) {
        // Local credentials are cleared even when remote logout fails.
        emit(const AuthState.unauthenticated());
      },
      onSuccess: (_) {
        emit(const AuthState.unauthenticated());
      },
    );
  }
}
