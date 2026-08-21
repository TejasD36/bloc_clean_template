import 'package:freezed_annotation/freezed_annotation.dart';

part 'water_tank_cleaning_dto.freezed.dart';
part 'water_tank_cleaning_dto.g.dart';

@freezed
abstract class WaterTankCleaningDetailDto with _$WaterTankCleaningDetailDto {
  const factory WaterTankCleaningDetailDto({
    @Default('') String slug,
    @Default(<CleaningOptionDto>[]) List<CleaningOptionDto> tankTypes,
    @Default(<CleaningCapacityDto>[]) List<CleaningCapacityDto> capacities,
    @Default(<CleaningMethodDto>[]) List<CleaningMethodDto> cleaningMethods,
  }) = _WaterTankCleaningDetailDto;

  factory WaterTankCleaningDetailDto.fromJson(Map<String, dynamic> json) =>
      _$WaterTankCleaningDetailDtoFromJson(json);
}

@freezed
abstract class CleaningOptionDto with _$CleaningOptionDto {
  const factory CleaningOptionDto({
    @Default('') String id,
    @Default('') String title,
  }) = _CleaningOptionDto;

  factory CleaningOptionDto.fromJson(Map<String, dynamic> json) =>
      _$CleaningOptionDtoFromJson(json);
}

@freezed
abstract class CleaningCapacityDto with _$CleaningCapacityDto {
  const factory CleaningCapacityDto({
    @Default('') String id,
    @Default('') String title,
    @Default(0) int capacityLiters,
  }) = _CleaningCapacityDto;

  factory CleaningCapacityDto.fromJson(Map<String, dynamic> json) =>
      _$CleaningCapacityDtoFromJson(json);
}

@freezed
abstract class CleaningMethodDto with _$CleaningMethodDto {
  const factory CleaningMethodDto({
    @Default('') String id,
    @Default('') String title,
    @Default('') String description,
    @Default(0) double price,
    @Default('₹') String currency,
    @Default(false) bool isRecommended,
    @Default(<CleaningCapacityPriceDto>[])
    List<CleaningCapacityPriceDto> capacityPrices,
  }) = _CleaningMethodDto;

  factory CleaningMethodDto.fromJson(Map<String, dynamic> json) =>
      _$CleaningMethodDtoFromJson(json);
}

@freezed
abstract class CleaningCapacityPriceDto with _$CleaningCapacityPriceDto {
  const factory CleaningCapacityPriceDto({
    @Default('') String capacityId,
    @Default(0) double price,
  }) = _CleaningCapacityPriceDto;

  factory CleaningCapacityPriceDto.fromJson(Map<String, dynamic> json) =>
      _$CleaningCapacityPriceDtoFromJson(json);
}
