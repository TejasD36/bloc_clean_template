import 'package:dartz/dartz.dart';

import '../../../../core.dart';
import '../../domain/entities/water_testing_package_entity.dart';
import '../../domain/repositories/water_testing_repository.dart';
import '../datasources/remote/water_testing_remote_datasource.dart';
import '../models/mappers/water_testing_packages_mapper.dart';

class WaterTestingRepositoryImpl implements WaterTestingRepository {
  const WaterTestingRepositoryImpl({required this.remoteDatasource});

  final WaterTestingRemoteDatasource remoteDatasource;

  @override
  Future<Either<AppException, WaterTestingPackagesEntity>> getPackages() =>
      remoteDatasource.getPackages().mapEntity((data) => data.toEntity());

  @override
  Future<Either<AppException, String>> submitBooking({
    required int offeringId,
    int? addressId,
    required String sampleType,
    String? selectedPlan,
    required double totalPrice,
  }) => remoteDatasource.submitBooking(
    offeringId: offeringId,
    addressId: addressId,
    sampleType: sampleType,
    selectedPlan: selectedPlan,
    totalPrice: totalPrice,
  );
}
