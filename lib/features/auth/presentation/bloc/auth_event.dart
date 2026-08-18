import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/auth_credentials.dart';

part 'auth_event.freezed.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const factory AuthEvent.checkAuthentication() = CheckAuthentication;

  const factory AuthEvent.sendOtp({required String phoneNumber, String? name}) =
      SendOtpRequested;

  const factory AuthEvent.resendOtp({required String phoneNumber}) =
      ResendOtpRequested;

  const factory AuthEvent.verifyOtp({
    required String phoneNumber,
    required String otp,
    String? firebaseToken,
  }) = VerifyOtpRequested;
}
