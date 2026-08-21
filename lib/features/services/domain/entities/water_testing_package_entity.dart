class WaterTestingPackagesEntity {
  const WaterTestingPackagesEntity({required this.packages});

  final List<WaterTestingPackageEntity> packages;
}

class WaterTestingPackageEntity {
  const WaterTestingPackageEntity({
    required this.id,
    required this.title,
    required this.price,
    required this.currency,
    required this.reportTimeHours,
    required this.features,
    required this.isDefault,
  });

  final String id;
  final String title;
  final double price;
  final String currency;
  final int reportTimeHours;
  final List<String> features;
  final bool isDefault;
}
