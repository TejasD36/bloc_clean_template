// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'water_type_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WaterTypesDto _$WaterTypesDtoFromJson(Map<String, dynamic> json) =>
    _WaterTypesDto(
      slug: json['slug'] as String? ?? '',
      waterTypeOptions:
          (json['waterTypeOptions'] as List<dynamic>?)
              ?.map((e) => WaterTypeDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <WaterTypeDto>[],
    );

Map<String, dynamic> _$WaterTypesDtoToJson(_WaterTypesDto instance) =>
    <String, dynamic>{
      'slug': instance.slug,
      'waterTypeOptions': instance.waterTypeOptions,
    };

_WaterTypeDto _$WaterTypeDtoFromJson(Map<String, dynamic> json) =>
    _WaterTypeDto(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$WaterTypeDtoToJson(_WaterTypeDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'icon': instance.icon,
    };
