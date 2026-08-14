import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../xcore.dart';

class ResetPasswordUseCase {
  const ResetPasswordUseCase(this._repository);

  final AuthRepository _repository;

  Future<Either<AppException, Unit>> call({
    required String email,
    required String password,
  }) {
    return _repository.resetPassword(email: email, password: password);
  }
}
