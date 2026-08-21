class WaterTankCleaningDetailEntity {
  const WaterTankCleaningDetailEntity({
    required this.tankTypes,
    required this.capacities,
    required this.cleaningMethods,
  });

  final List<CleaningOptionEntity> tankTypes;
  final List<CleaningCapacityEntity> capacities;
  final List<CleaningMethodEntity> cleaningMethods;
}

class CleaningOptionEntity {
  const CleaningOptionEntity({required this.id, required this.title});

  final String id;
  final String title;
}

class CleaningCapacityEntity {
  const CleaningCapacityEntity({
    required this.id,
    required this.title,
    required this.capacityLiters,
  });

  final String id;
  final String title;
  final int capacityLiters;
}

class CleaningMethodEntity {
  const CleaningMethodEntity({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.currency,
    required this.isRecommended,
    required this.capacityPrices,
  });

  final String id;
  final String title;
  final String description;
  final double price;
  final String currency;
  final bool isRecommended;
  final List<CleaningCapacityPriceEntity> capacityPrices;

  double priceFor(String capacityId) => capacityPrices
      .firstWhere(
        (item) => item.capacityId == capacityId,
        orElse: () =>
            CleaningCapacityPriceEntity(capacityId: capacityId, price: price),
      )
      .price;
}

class CleaningCapacityPriceEntity {
  const CleaningCapacityPriceEntity({
    required this.capacityId,
    required this.price,
  });

  final String capacityId;
  final double price;
}
