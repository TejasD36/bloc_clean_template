import '../../../address/domain/entities/address_entity.dart';
import '../../../home/domain/entities/home_entity.dart';
import '../../domain/entities/water_tank_cleaning_entity.dart';

class WaterTankCleaningOptionsArgs {
  const WaterTankCleaningOptionsArgs({
    required this.service,
    required this.detail,
  });

  final HomeServiceEntity service;
  final WaterTankCleaningDetailEntity detail;
}

class WaterTankCleaningSummaryArgs {
  const WaterTankCleaningSummaryArgs({
    required this.service,
    required this.tankType,
    required this.capacity,
    required this.cleaningMethod,
    required this.address,
  });

  final HomeServiceEntity service;
  final CleaningOptionEntity tankType;
  final CleaningCapacityEntity capacity;
  final CleaningMethodEntity cleaningMethod;
  final AddressEntity address;
}
