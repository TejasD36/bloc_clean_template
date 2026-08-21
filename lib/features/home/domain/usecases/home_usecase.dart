import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../entities/home_entity.dart';
import '../repositories/home_repository.dart';

/// Use case for Home.
class HomeUsecase {
  const HomeUsecase({required HomeRepository repository})
    : _repository = repository;

  final HomeRepository _repository;

  Future<Either<AppException, HomeEntity>> call() {
    return _repository.getHomeScreen();
  }
}
