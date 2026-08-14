import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/auth_credentials.dart';

part 'auth_event.freezed.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkAuthentication() = CheckAuthentication;
  const factory AuthEvent.login(LoginCredentials credentials) = LoginRequested;
  const factory AuthEvent.register(RegisterCredentials credentials) =
      RegisterRequested;
  const factory AuthEvent.forgotPassword(String email) =
      ForgotPasswordRequested;
  const factory AuthEvent.resetPassword({
    required String email,
    required String password,
  }) = ResetPasswordRequested;
  const factory AuthEvent.changePassword({
    String? currentPassword,
    required String newPassword,
  }) = ChangePasswordRequested;
  const factory AuthEvent.signOut() = SignOut;
}
