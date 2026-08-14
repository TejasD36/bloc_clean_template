import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../xcore.dart';

class ForgotPasswordUseCase {
  const ForgotPasswordUseCase(this._repository);

  final AuthRepository _repository;

  Future<Either<AppException, Unit>> call(String email) {
    return _repository.forgotPassword(email);
  }
}
