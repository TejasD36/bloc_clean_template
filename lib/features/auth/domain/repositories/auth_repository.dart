import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../xcore.dart';

abstract interface class AuthRepository {
  Future<Either<AppException, UserEntity>> login(LoginCredentials credentials);
  Future<Either<AppException, UserEntity>> register(
    RegisterCredentials credentials,
  );
  Future<Either<AppException, Unit>> forgotPassword(String email);
  Future<Either<AppException, Unit>> resetPassword({
    required String email,
    required String password,
  });
  Future<Either<AppException, Unit>> changePassword({
    String? currentPassword,
    required String newPassword,
  });
  Future<Either<AppException, UserEntity?>> getCurrentUser();
  Future<Either<AppException, Unit>> signOut();

  /// Clears the persisted session without calling the remote logout API.
  /// Used when the server reports an expired/invalid session (401).
  Future<Either<AppException, Unit>> clearSession();
}
