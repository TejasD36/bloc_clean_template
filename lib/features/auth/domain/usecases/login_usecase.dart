import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../xcore.dart';

class LoginUseCase {
  const LoginUseCase(this._repository);

  final AuthRepository _repository;

  Future<Either<AppException, UserEntity>> call(LoginCredentials credentials) {
    return _repository.login(credentials);
  }
}
