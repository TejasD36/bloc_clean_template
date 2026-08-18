import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../xcore.dart';

class CheckAuthenticationUseCase {
  const CheckAuthenticationUseCase(this._repository);

  final AuthRepository _repository;

  Future<Either<AppException, bool>> call() {
    return _repository.isAuthenticated();
  }
}
