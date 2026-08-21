import '../../../address/domain/entities/address_entity.dart';
import '../../../home/domain/entities/home_entity.dart';
import '../../domain/entities/water_testing_package_entity.dart';

class WaterTestingBookingArgs {
  const WaterTestingBookingArgs({
    required this.service,
    required this.sampleType,
    this.address,
    this.package,
  });

  final HomeServiceEntity service;
  final String sampleType;
  final WaterTestingPackageEntity? package;
  final AddressEntity? address;

  bool get isHomeSample => sampleType == 'home_sample';

  String get serviceType =>
      isHomeSample ? 'Home Sample Collection' : 'Self Sample Submission';

  double get amount => package?.price ?? 0;
}
