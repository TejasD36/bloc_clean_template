import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../xcore.dart';

class RegisterUseCase {
  const RegisterUseCase(this._repository);

  final AuthRepository _repository;

  Future<Either<AppException, UserEntity>> call(
    RegisterCredentials credentials,
  ) {
    return _repository.register(credentials);
  }
}
