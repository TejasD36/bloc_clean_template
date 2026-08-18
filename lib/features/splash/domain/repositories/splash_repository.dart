import 'package:dartz/dartz.dart';

import '../../../../core.dart';
import '../entities/splash_screen_entity.dart';

abstract interface class SplashRepository {
  Future<Either<AppException, SplashScreenEntity>> getSplashScreen();
}
