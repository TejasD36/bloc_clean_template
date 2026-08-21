import '../../../domain/entities/water_tank_cleaning_entity.dart';
import '../dtos/water_tank_cleaning_dto.dart';

extension WaterTankCleaningMapper on WaterTankCleaningDetailDto {
  WaterTankCleaningDetailEntity toEntity() => WaterTankCleaningDetailEntity(
    tankTypes: tankTypes.map((item) => item.toEntity()).toList(),
    capacities: capacities.map((item) => item.toEntity()).toList(),
    cleaningMethods: cleaningMethods.map((item) => item.toEntity()).toList(),
  );
}

extension CleaningOptionMapper on CleaningOptionDto {
  CleaningOptionEntity toEntity() => CleaningOptionEntity(id: id, title: title);
}

extension CleaningCapacityMapper on CleaningCapacityDto {
  CleaningCapacityEntity toEntity() => CleaningCapacityEntity(
    id: id,
    title: title,
    capacityLiters: capacityLiters,
  );
}

extension CleaningMethodMapper on CleaningMethodDto {
  CleaningMethodEntity toEntity() => CleaningMethodEntity(
    id: id,
    title: title,
    description: description,
    price: price,
    currency: currency,
    isRecommended: isRecommended,
    capacityPrices: capacityPrices.map((item) => item.toEntity()).toList(),
  );
}

extension CleaningCapacityPriceMapper on CleaningCapacityPriceDto {
  CleaningCapacityPriceEntity toEntity() =>
      CleaningCapacityPriceEntity(capacityId: capacityId, price: price);
}
