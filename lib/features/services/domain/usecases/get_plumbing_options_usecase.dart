import 'package:dartz/dartz.dart';

import '../../../../core.dart';
import '../entities/plumbing_service_option_entity.dart';
import '../repositories/plumbing_repository.dart';

class GetPlumbingOptionsUsecase {
  const GetPlumbingOptionsUsecase({required this.repository});

  final PlumbingRepository repository;

  Future<Either<AppException, PlumbingServiceOptionsEntity>> call() =>
      repository.getOptions();
}
