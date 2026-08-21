import '../../../common/domain/enums/customer_service_slug.dart';

enum ServiceFlowType {
  waterTanker,
  waterBottleJarDelivery,
  waterTankCleaning,
  plumbing,
  waterTesting,
  roService,
  waterSoftener,
  waterCoolerAndPurifier,
  rainWaterHarvesting,
  stp,
  borewell,
  unknown,
}

extension ServiceFlowTypeMapper on CustomerServiceSlug {
  ServiceFlowType get flowType {
    return switch (this) {
      CustomerServiceSlug.waterTanker => ServiceFlowType.waterTanker,
      CustomerServiceSlug.waterBottleJarDelivery =>
        ServiceFlowType.waterBottleJarDelivery,
      CustomerServiceSlug.waterTankCleaning =>
        ServiceFlowType.waterTankCleaning,
      CustomerServiceSlug.plumbingService => ServiceFlowType.plumbing,
      CustomerServiceSlug.waterTestingLaboratory =>
        ServiceFlowType.waterTesting,
      CustomerServiceSlug.roService => ServiceFlowType.roService,
      CustomerServiceSlug.waterSoftener => ServiceFlowType.waterSoftener,
      CustomerServiceSlug.waterCoolerAndPurifier =>
        ServiceFlowType.waterCoolerAndPurifier,
      CustomerServiceSlug.rainWaterHarvesting =>
        ServiceFlowType.rainWaterHarvesting,
      CustomerServiceSlug.stp => ServiceFlowType.stp,
      CustomerServiceSlug.borewell => ServiceFlowType.borewell,
      CustomerServiceSlug.unknown => ServiceFlowType.unknown,
    };
  }
}
