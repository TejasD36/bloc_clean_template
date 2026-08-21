import 'package:dartz/dartz.dart';

import '../../../../core.dart';
import '../../domain/entities/plumbing_service_option_entity.dart';
import '../../domain/repositories/plumbing_repository.dart';
import '../datasources/remote/plumbing_remote_datasource.dart';
import '../models/mappers/plumbing_service_options_mapper.dart';

class PlumbingRepositoryImpl implements PlumbingRepository {
  const PlumbingRepositoryImpl({required this.remoteDatasource});

  final PlumbingRemoteDatasource remoteDatasource;

  @override
  Future<Either<AppException, PlumbingServiceOptionsEntity>> getOptions() {
    return remoteDatasource.getOptions().mapEntity((data) => data.toEntity());
  }

  @override
  Future<Either<AppException, String>> submitBooking({
    required int offeringId,
    required int addressId,
    required List<String> optionIds,
  }) {
    return remoteDatasource.submitBooking(
      offeringId: offeringId,
      addressId: addressId,
      optionIds: optionIds,
    );
  }
}
