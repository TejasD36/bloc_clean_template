import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/user_entity.dart';

part 'auth_state.freezed.dart';

@freezed
sealed class AuthState with _$AuthState {
  const factory AuthState.initial() = AuthInitial;
  const factory AuthState.loading() = AuthLoading;
  const factory AuthState.authenticated(UserEntity user) = AuthAuthenticated;
  const factory AuthState.passwordResetRequested() = AuthPasswordResetRequested;
  const factory AuthState.passwordReset([UserEntity? user]) = AuthPasswordReset;
  const factory AuthState.passwordChanged([UserEntity? user]) =
      AuthPasswordChanged;
  const factory AuthState.unauthenticated() = AuthUnauthenticated;
  const factory AuthState.failure({required String message}) = AuthFailure;
}
