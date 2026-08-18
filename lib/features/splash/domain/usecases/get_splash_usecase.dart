import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../entities/splash_screen_entity.dart';
import '../repositories/splash_repository.dart';

class GetSplashScreenUseCase {
  const GetSplashScreenUseCase(this._repository);

  final SplashRepository _repository;

  Future<Either<AppException, SplashScreenEntity>> call() {
    return _repository.getSplashScreen();
  }
}
