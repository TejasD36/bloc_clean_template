// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plumbing_service_options_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PlumbingServiceOptionsDto _$PlumbingServiceOptionsDtoFromJson(
  Map<String, dynamic> json,
) => _PlumbingServiceOptionsDto(
  slug: json['slug'] as String? ?? '',
  serviceOptions:
      (json['serviceOptions'] as List<dynamic>?)
          ?.map(
            (e) => PlumbingServiceOptionDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <PlumbingServiceOptionDto>[],
);

Map<String, dynamic> _$PlumbingServiceOptionsDtoToJson(
  _PlumbingServiceOptionsDto instance,
) => <String, dynamic>{
  'slug': instance.slug,
  'serviceOptions': instance.serviceOptions,
};

_PlumbingServiceOptionDto _$PlumbingServiceOptionDtoFromJson(
  Map<String, dynamic> json,
) => _PlumbingServiceOptionDto(
  id: json['id'] as String? ?? '',
  title: json['title'] as String? ?? '',
  icon: json['icon'] as String?,
);

Map<String, dynamic> _$PlumbingServiceOptionDtoToJson(
  _PlumbingServiceOptionDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'icon': instance.icon,
};
