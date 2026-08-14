import 'dart:convert';

import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../xcore.dart';

class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl({
    required this._authRemoteDatasource,
    required this._authLocalDatasource,
  });

  final AuthRemoteDatasource _authRemoteDatasource;
  final AuthLocalDatasource _authLocalDatasource;

  @override
  Future<Either<AppException, UserEntity>> login(LoginCredentials credentials) {
    return _authRemoteDatasource
        .login(LoginRequestDto.fromCredentials(credentials))
        .onSuccess(_saveApiSession)
        .mapEntity((session) => session.user.toEntity());
  }

  @override
  Future<Either<AppException, UserEntity>> register(
    RegisterCredentials credentials,
  ) {
    return _authRemoteDatasource
        .register(RegisterRequestDto.fromCredentials(credentials))
        .onSuccess(_saveApiSession)
        .mapEntity((session) => session.user.toEntity());
  }

  @override
  Future<Either<AppException, Unit>> forgotPassword(String email) {
    return _authRemoteDatasource
        .forgotPassword(ForgotPasswordRequestDto(email: email))
        .mapEntity((_) => unit);
  }

  @override
  Future<Either<AppException, Unit>> resetPassword({
    required String email,
    required String password,
  }) {
    return _authRemoteDatasource
        .resetPassword(
          ResetPasswordRequestDto(email: email, password: password),
        )
        .mapEntity((_) => unit);
  }

  @override
  Future<Either<AppException, Unit>> changePassword({
    String? currentPassword,
    required String newPassword,
  }) {
    return _authRemoteDatasource
        .changePassword(
          ChangePasswordRequestDto(
            currentPassword: currentPassword,
            newPassword: newPassword,
          ),
        )
        .mapEntity((_) => unit);
  }

  @override
  Future<Either<AppException, UserEntity?>> getCurrentUser() async {
    final accessToken = await _authLocalDatasource.getAccessToken();
    final localUser = await _authLocalDatasource.getUser();
    final isTokenExpired = accessToken != null && _isTokenExpired(accessToken);

    if (accessToken == null ||
        accessToken.isEmpty ||
        localUser == null ||
        isTokenExpired) {
      if (isTokenExpired) {
        await _authLocalDatasource.clearAuthData();
      }
      return const Right(null);
    }

    return Right(localUser.toEntity());
  }

  @override
  Future<Either<AppException, Unit>> signOut() async {
    final accessToken = await _authLocalDatasource.getAccessToken();
    AppException? logoutFailure;

    if (accessToken?.isNotEmpty == true) {
      final apiResult = await _authRemoteDatasource.logoutApi();
      apiResult.fold((failure) => logoutFailure = failure, (_) {});
    }

    await _authLocalDatasource.clearAuthData();

    if (logoutFailure != null) return Left(logoutFailure!);
    return const Right(unit);
  }

  @override
  Future<Either<AppException, Unit>> clearSession() async {
    await _authLocalDatasource.clearAuthData();

    return const Right(unit);
  }

  Future<void> _saveApiSession(AuthSessionDto session) async {
    await Future.wait([
      _authLocalDatasource.saveAccessToken(session.token),
      _authLocalDatasource.saveUser(session.user),
    ]);
  }

  bool _isTokenExpired(String token) {
    try {
      final parts = token.split('.');
      // Opaque API tokens do not expose expiry metadata. Keep them until the
      // backend rejects them; JWTs can be checked locally.
      if (parts.length != 3) return false;
      final payload = jsonDecode(
        utf8.decode(base64Url.decode(base64Url.normalize(parts[1]))),
      );
      if (payload is! Map || payload['exp'] is! num) return false;
      final expiresAt = DateTime.fromMillisecondsSinceEpoch(
        (payload['exp'] as num).toInt() * 1000,
      );
      return !expiresAt.isAfter(DateTime.now());
    } catch (_) {
      return false;
    }
  }
}
