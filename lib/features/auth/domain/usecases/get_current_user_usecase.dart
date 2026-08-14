import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../xcore.dart';

class GetCurrentUserUseCase {
  const GetCurrentUserUseCase(this._repository);

  final AuthRepository _repository;

  Future<Either<AppException, UserEntity?>> call() {
    return _repository.getCurrentUser();
  }
}
