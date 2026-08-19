import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../xcore.dart';

class LogoutUseCase {
  const LogoutUseCase(this._repository);

  final AuthRepository _repository;

  Future<Either<AppException, ResultMessage>> call() {
    return _repository.logout();
  }
}
