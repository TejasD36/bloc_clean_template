import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../entities/send_otp_entity.dart';
import '../entities/session_entity.dart';

abstract interface class AuthRepository {
  Future<Either<AppException, SendOtpEntity>> sendOtp({
    required String phoneNumber,
    String? name,
  });

  Future<Either<AppException, ResultMessage>> resendOtp({
    required String phoneNumber,
  });

  Future<Either<AppException, bool>> isAuthenticated();

  Future<Either<AppException, SessionEntity>> verifyOtp({
    required String phoneNumber,
    required String otp,
    String? firebaseToken,
  });
}
