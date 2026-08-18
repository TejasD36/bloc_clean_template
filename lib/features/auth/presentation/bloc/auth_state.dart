import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/send_otp_entity.dart';

part 'auth_state.freezed.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;
  const factory AuthState.loading() = AuthLoading;
  const factory AuthState.failure({required String message}) = AuthFailure;
  const factory AuthState.authenticated() = AuthAuthenticated;
  const factory AuthState.unauthenticated() = AuthUnauthenticated;
  const factory AuthState.otpResent() = AuthOtpResent;

  const factory AuthState.otpSent(SendOtpEntity data) = AuthOtpSent;
}
