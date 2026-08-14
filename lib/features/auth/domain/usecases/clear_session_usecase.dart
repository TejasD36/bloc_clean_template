import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../xcore.dart';

class ClearSessionUseCase {
  const ClearSessionUseCase(this._repository);
  final AuthRepository _repository;

  Future<Either<AppException, Unit>> call() {
    return _repository.clearSession();
  }
}
