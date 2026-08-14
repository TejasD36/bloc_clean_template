import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../../xcore.dart';

abstract interface class AuthRemoteDatasource {
  Future<Either<AppException, AuthSessionDto>> login(LoginRequestDto request);
  Future<Either<AppException, AuthSessionDto>> register(
    RegisterRequestDto request,
  );
  Future<Either<AppException, Unit>> forgotPassword(
    ForgotPasswordRequestDto request,
  );
  Future<Either<AppException, Unit>> resetPassword(
    ResetPasswordRequestDto request,
  );
  Future<Either<AppException, Unit>> changePassword(
    ChangePasswordRequestDto request,
  );
  Future<Either<AppException, Unit>> logoutApi();
}
