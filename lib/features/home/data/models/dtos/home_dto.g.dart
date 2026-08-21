// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HomeDto _$HomeDtoFromJson(Map<String, dynamic> json) => _HomeDto(
  userName: json['userName'] as String? ?? '',
  banners:
      (json['banners'] as List<dynamic>?)
          ?.map((e) => HomeBannerDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <HomeBannerDto>[],
  services:
      (json['services'] as List<dynamic>?)
          ?.map((e) => HomeServiceDto.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const <HomeServiceDto>[],
);

Map<String, dynamic> _$HomeDtoToJson(_HomeDto instance) => <String, dynamic>{
  'userName': instance.userName,
  'banners': instance.banners,
  'services': instance.services,
};

_HomeBannerDto _$HomeBannerDtoFromJson(Map<String, dynamic> json) =>
    _HomeBannerDto(
      id: (json['id'] as num?)?.toInt() ?? 0,
      image: json['image'] as String? ?? '',
      linkUrl: json['linkUrl'] as String?,
    );

Map<String, dynamic> _$HomeBannerDtoToJson(_HomeBannerDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'image': instance.image,
      'linkUrl': instance.linkUrl,
    };

_HomeServiceDto _$HomeServiceDtoFromJson(Map<String, dynamic> json) =>
    _HomeServiceDto(
      id: (json['id'] as num?)?.toInt() ?? 0,
      name: json['name'] as String? ?? '',
      slug: json['slug'] as String? ?? '',
      description: json['description'] as String? ?? '',
      icon: json['icon'] as String? ?? '',
      isPaymentRequired: json['isPaymentRequired'] as bool? ?? false,
    );

Map<String, dynamic> _$HomeServiceDtoToJson(_HomeServiceDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'slug': instance.slug,
      'description': instance.description,
      'icon': instance.icon,
      'isPaymentRequired': instance.isPaymentRequired,
    };
