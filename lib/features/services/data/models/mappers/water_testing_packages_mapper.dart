import '../../../domain/entities/water_testing_package_entity.dart';
import '../dtos/water_testing_packages_dto.dart';

extension WaterTestingPackagesMapper on WaterTestingPackagesDto {
  WaterTestingPackagesEntity toEntity() => WaterTestingPackagesEntity(
    packages: testPackages.map((item) => item.toEntity()).toList(),
  );
}

extension WaterTestingPackageMapper on WaterTestingPackageDto {
  WaterTestingPackageEntity toEntity() => WaterTestingPackageEntity(
    id: id,
    title: title,
    price: price,
    currency: currency,
    reportTimeHours: reportTimeHours,
    features: features,
    isDefault: isDefault,
  );
}
