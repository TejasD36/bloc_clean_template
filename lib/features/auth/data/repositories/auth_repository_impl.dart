import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../domain/entities/send_otp_entity.dart';
import '../../xcore.dart';
import '../models/dtos/resend_otp_request_dto.dart';
import '../models/dtos/send_otp_request_dto.dart';
import '../models/dtos/verify_otp_request_dto.dart';
import '../models/mappers/auth_session_mapper.dart';
import '../models/mappers/send_otp_mapper.dart';

class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl({
    required this._authRemoteDatasource,
    required this._authLocalDatasource,
  });

  final AuthRemoteDatasource _authRemoteDatasource;
  final AuthLocalDatasource _authLocalDatasource;

  @override
  Future<Either<AppException, ResultMessage>> logout() async {
    final result = await _authRemoteDatasource.logout();

    return result.fold(Left.new, (message) async {
      await _authLocalDatasource.clearAuthData();
      return Right<AppException, ResultMessage>(message);
    });
  }

  @override
  Future<Either<AppException, SendOtpEntity>> sendOtp({
    required String phoneNumber,
    String? name,
  }) {
    return _authRemoteDatasource
        .sendOtp(SendOtpRequestDto(phoneNumber: phoneNumber, name: name))
        .mapEntity((response) => response.toEntity());
  }

  @override
  Future<Either<AppException, bool>> isAuthenticated() async {
    final token = await _authLocalDatasource.getAccessToken();

    return Right(token != null && token.isNotEmpty);
  }

  @override
  Future<Either<AppException, ResultMessage>> resendOtp({
    required String phoneNumber,
  }) {
    return _authRemoteDatasource.resendOtp(
      ResendOtpRequestDto(phoneNumber: phoneNumber),
    );
  }

  @override
  Future<Either<AppException, SessionEntity>> verifyOtp({
    required String phoneNumber,
    required String otp,
    String? firebaseToken,
  }) async {
    final result = await _authRemoteDatasource.verifyOtp(
      VerifyOtpRequestDto(
        phoneNumber: phoneNumber,
        otp: otp,
        firebaseToken: firebaseToken,
      ),
    );

    return result.fold(
      (failure) async => Left<AppException, SessionEntity>(failure),
      (session) async {
        await _authLocalDatasource.saveAccessToken(session.token);
        await _authLocalDatasource.saveUser(session.user);

        return Right<AppException, SessionEntity>(session.toEntity());
      },
    );
  }
}
