import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../models/dtos/auth_session_dto.dart';
import '../../models/dtos/resend_otp_request_dto.dart';
import '../../models/dtos/send_otp_request_dto.dart';
import '../../models/dtos/send_otp_response_dto.dart';
import '../../models/dtos/verify_otp_request_dto.dart';

abstract interface class AuthRemoteDatasource {
  Future<Either<AppException, ResultMessage>> logout();

  Future<Either<AppException, SendOtpResponseDto>> sendOtp(
    SendOtpRequestDto request,
  );

  Future<Either<AppException, ResultMessage>> resendOtp(
    ResendOtpRequestDto request,
  );

  Future<Either<AppException, AuthSessionDto>> verifyOtp(
    VerifyOtpRequestDto request,
  );
}
