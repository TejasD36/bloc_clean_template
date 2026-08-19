import 'dart:convert';
import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../../core.dart';
import '../../../xcore.dart';
import '../../constants/auth_endpoints.dart';
import '../../models/dtos/resend_otp_request_dto.dart';
import '../../models/dtos/send_otp_request_dto.dart';
import '../../models/dtos/send_otp_response_dto.dart';
import '../../models/dtos/verify_otp_request_dto.dart';

class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  const AuthRemoteDatasourceImpl({required this.apiService});

  final BaseApiService apiService;

  // TODO: Replace with a persisted/generated device id.
  static const String _deviceId = 'device-001';

  String get _deviceInfo => jsonEncode({
    'model': Platform.isAndroid ? 'Android' : 'iOS',
    'os': Platform.operatingSystemVersion,
  });

  @override
  Future<Either<AppException, ResultMessage>> logout() {
    return apiService
        .postApi<ResultMessage>(
          AuthEndpoints.logout,
          const ObjectMapper(ResultMessage.fromJson),
        )
        .mapMessage();
  }

  @override
  Future<Either<AppException, SendOtpResponseDto>> sendOtp(
    SendOtpRequestDto request,
  ) {
    return apiService
        .postApi<SendOtpResponseDto>(
          AuthEndpoints.sendOtp,
          const ObjectMapper(SendOtpResponseDto.fromJson),
          body: request.toJson(),
          allowBusinessFailureData: true,
        )
        .mapEntity((data) => data);
  }

  @override
  Future<Either<AppException, ResultMessage>> resendOtp(
    ResendOtpRequestDto request,
  ) {
    return apiService
        .postApi<ResultMessage>(
          AuthEndpoints.resendOtp,
          const ObjectMapper(ResultMessage.fromJson),
          body: request.toJson(),
        )
        .mapMessage();
  }

  @override
  Future<Either<AppException, AuthSessionDto>> verifyOtp(
    VerifyOtpRequestDto request,
  ) {
    return apiService
        .postApi<AuthSessionDto>(
          AuthEndpoints.verifyOtp,
          const ObjectMapper(AuthSessionDto.fromJson),
          body: request.toJson(),
          options: Options(
            headers: {
              HeaderKey.deviceId: _deviceId,
              HeaderKey.deviceInfo: _deviceInfo,
            },
          ),
        )
        .mapEntity((data) => data);
  }
}
