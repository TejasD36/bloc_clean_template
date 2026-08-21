import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../entities/home_entity.dart';

/// Contract for Home operations.
abstract interface class HomeRepository {
  Future<Either<AppException, HomeEntity>> getHomeScreen();
}
