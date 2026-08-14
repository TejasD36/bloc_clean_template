import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../../xcore.dart';
import '../../constants/auth_endpoints.dart';

class AuthRemoteDatasourceImpl implements AuthRemoteDatasource {
  const AuthRemoteDatasourceImpl({required this.apiService});

  final BaseApiService apiService;

  @override
  Future<Either<AppException, AuthSessionDto>> login(LoginRequestDto request) {
    return apiService
        .postApi<AuthSessionDto>(
          AuthEndpoints.login,
          const ObjectMapper(AuthSessionDto.fromJson),
          body: request.toJson(),
        )
        .mapEntity((session) => session);
  }

  @override
  Future<Either<AppException, AuthSessionDto>> register(
    RegisterRequestDto request,
  ) {
    return apiService
        .postApi<AuthSessionDto>(
          AuthEndpoints.register,
          const ObjectMapper(AuthSessionDto.fromJson),
          body: request.toJson(),
        )
        .mapEntity((session) => session);
  }

  @override
  Future<Either<AppException, Unit>> forgotPassword(
    ForgotPasswordRequestDto request,
  ) {
    return apiService
        .postApi<Unit>(
          AuthEndpoints.forgotPassword,
          ObjectMapper((_) => unit),
          body: request.toJson(),
        )
        .mapEntity((_) => unit);
  }

  @override
  Future<Either<AppException, Unit>> resetPassword(
    ResetPasswordRequestDto request,
  ) async {
    final result = await apiService.postApi<Unit>(
      AuthEndpoints.resetPassword,
      ObjectMapper((_) => unit),
      body: request.toJson(),
    );

    return result.fold(Left.new, (_) => const Right(unit));
  }

  @override
  Future<Either<AppException, Unit>> changePassword(
    ChangePasswordRequestDto request,
  ) async {
    final result = await apiService.postApi<Unit>(
      AuthEndpoints.changePassword,
      ObjectMapper((_) => unit),
      body: request.toJson(),
    );

    return result.fold(Left.new, (_) => const Right(unit));
  }

  @override
  Future<Either<AppException, Unit>> logoutApi() async {
    final result = await apiService.postApi<Unit>(
      AuthEndpoints.logout,
      ObjectMapper((_) => unit),
    );

    return result.fold(Left.new, (_) => const Right(unit));
  }
}
