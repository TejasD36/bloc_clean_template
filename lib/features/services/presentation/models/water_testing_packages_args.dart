import '../../../home/domain/entities/home_entity.dart';

class WaterTestingPackagesArgs {
  const WaterTestingPackagesArgs({
    required this.service,
    required this.sampleType,
  });

  final HomeServiceEntity service;
  final String sampleType;
}
