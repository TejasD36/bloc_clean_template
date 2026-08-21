// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tanker_capacity_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TankerCapacitiesDto _$TankerCapacitiesDtoFromJson(Map<String, dynamic> json) =>
    _TankerCapacitiesDto(
      slug: json['slug'] as String? ?? '',
      capacityOptions:
          (json['capacityOptions'] as List<dynamic>?)
              ?.map(
                (e) => TankerCapacityDto.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const <TankerCapacityDto>[],
    );

Map<String, dynamic> _$TankerCapacitiesDtoToJson(
  _TankerCapacitiesDto instance,
) => <String, dynamic>{
  'slug': instance.slug,
  'capacityOptions': instance.capacityOptions,
};

_TankerCapacityDto _$TankerCapacityDtoFromJson(Map<String, dynamic> json) =>
    _TankerCapacityDto(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      capacityLiters: (json['capacityLiters'] as num?)?.toInt() ?? 0,
      description: json['description'] as String? ?? '',
      price: (json['price'] as num?)?.toDouble() ?? 0,
      currency: json['currency'] as String? ?? '₹',
      image: json['image'] as String?,
    );

Map<String, dynamic> _$TankerCapacityDtoToJson(_TankerCapacityDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'capacityLiters': instance.capacityLiters,
      'description': instance.description,
      'price': instance.price,
      'currency': instance.currency,
      'image': instance.image,
    };
