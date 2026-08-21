// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'water_product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WaterProductsDto _$WaterProductsDtoFromJson(Map<String, dynamic> json) =>
    _WaterProductsDto(
      slug: json['slug'] as String? ?? '',
      products:
          (json['products'] as List<dynamic>?)
              ?.map((e) => WaterProductDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <WaterProductDto>[],
    );

Map<String, dynamic> _$WaterProductsDtoToJson(_WaterProductsDto instance) =>
    <String, dynamic>{'slug': instance.slug, 'products': instance.products};

_WaterProductDto _$WaterProductDtoFromJson(Map<String, dynamic> json) =>
    _WaterProductDto(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0,
      currency: json['currency'] as String? ?? '₹',
      image: json['image'] as String?,
      defaultQuantity: (json['defaultQuantity'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$WaterProductDtoToJson(_WaterProductDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'price': instance.price,
      'currency': instance.currency,
      'image': instance.image,
      'defaultQuantity': instance.defaultQuantity,
    };
