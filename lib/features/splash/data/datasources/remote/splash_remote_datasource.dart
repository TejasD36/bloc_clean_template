import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../models/dtos/splash_screen_dto.dart';

abstract interface class SplashRemoteDatasource {
  Future<Either<AppException, SplashScreenDto>> getSplashScreen();
}
