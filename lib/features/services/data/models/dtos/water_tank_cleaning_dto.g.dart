// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'water_tank_cleaning_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WaterTankCleaningDetailDto _$WaterTankCleaningDetailDtoFromJson(
  Map<String, dynamic> json,
) => _WaterTankCleaningDetailDto(
  slug: json['slug'] as String? ?? '',
  tankTypes:
      (json['tankTypes'] as List<dynamic>?)
          ?.map((e) => CleaningOptionDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <CleaningOptionDto>[],
  capacities:
      (json['capacities'] as List<dynamic>?)
          ?.map((e) => CleaningCapacityDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <CleaningCapacityDto>[],
  cleaningMethods:
      (json['cleaningMethods'] as List<dynamic>?)
          ?.map((e) => CleaningMethodDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <CleaningMethodDto>[],
);

Map<String, dynamic> _$WaterTankCleaningDetailDtoToJson(
  _WaterTankCleaningDetailDto instance,
) => <String, dynamic>{
  'slug': instance.slug,
  'tankTypes': instance.tankTypes,
  'capacities': instance.capacities,
  'cleaningMethods': instance.cleaningMethods,
};

_CleaningOptionDto _$CleaningOptionDtoFromJson(Map<String, dynamic> json) =>
    _CleaningOptionDto(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
    );

Map<String, dynamic> _$CleaningOptionDtoToJson(_CleaningOptionDto instance) =>
    <String, dynamic>{'id': instance.id, 'title': instance.title};

_CleaningCapacityDto _$CleaningCapacityDtoFromJson(Map<String, dynamic> json) =>
    _CleaningCapacityDto(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      capacityLiters: (json['capacityLiters'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$CleaningCapacityDtoToJson(
  _CleaningCapacityDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'capacityLiters': instance.capacityLiters,
};

_CleaningMethodDto _$CleaningMethodDtoFromJson(Map<String, dynamic> json) =>
    _CleaningMethodDto(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0,
      currency: json['currency'] as String? ?? '₹',
      isRecommended: json['isRecommended'] as bool? ?? false,
      capacityPrices:
          (json['capacityPrices'] as List<dynamic>?)
              ?.map(
                (e) => CleaningCapacityPriceDto.fromJson(
                  e as Map<String, dynamic>,
                ),
              )
              .toList() ??
          const <CleaningCapacityPriceDto>[],
    );

Map<String, dynamic> _$CleaningMethodDtoToJson(_CleaningMethodDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'price': instance.price,
      'currency': instance.currency,
      'isRecommended': instance.isRecommended,
      'capacityPrices': instance.capacityPrices,
    };

_CleaningCapacityPriceDto _$CleaningCapacityPriceDtoFromJson(
  Map<String, dynamic> json,
) => _CleaningCapacityPriceDto(
  capacityId: json['capacityId'] as String? ?? '',
  price: (json['price'] as num?)?.toDouble() ?? 0,
);

Map<String, dynamic> _$CleaningCapacityPriceDtoToJson(
  _CleaningCapacityPriceDto instance,
) => <String, dynamic>{
  'capacityId': instance.capacityId,
  'price': instance.price,
};
