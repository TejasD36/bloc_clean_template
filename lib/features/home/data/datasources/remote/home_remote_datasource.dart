import 'package:dartz/dartz.dart';

import '../../../../../core.dart';
import '../../models/dtos/home_dto.dart';

/// Contract for remote Home data operations.
abstract interface class HomeRemoteDatasource {
  Future<Either<AppException, HomeDto>> getHomeScreen();
}
