import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../domain/entities/splash_screen_entity.dart';
import '../../domain/repositories/splash_repository.dart';
import '../datasources/remote/splash_remote_datasource.dart';
import '../models/mappers/splash_screen_mapper.dart';

class SplashRepositoryImpl implements SplashRepository {
  const SplashRepositoryImpl({required this._splashRemoteDatasource});

  final SplashRemoteDatasource _splashRemoteDatasource;

  @override
  Future<Either<AppException, SplashScreenEntity>> getSplashScreen() {
    return _splashRemoteDatasource.getSplashScreen().mapEntity((dto) => dto.toEntity());
  }
}
