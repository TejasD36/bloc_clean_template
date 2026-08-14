import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../xcore.dart';

class SignOutUseCase {
  const SignOutUseCase(this._repository);
  final AuthRepository _repository;

  Future<Either<AppException, Unit>> call() {
    return _repository.signOut();
  }
}
