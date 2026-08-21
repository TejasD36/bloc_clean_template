// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'water_testing_packages_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WaterTestingPackagesDto _$WaterTestingPackagesDtoFromJson(
  Map<String, dynamic> json,
) => _WaterTestingPackagesDto(
  slug: json['slug'] as String? ?? '',
  testPackages:
      (json['testPackages'] as List<dynamic>?)
          ?.map(
            (e) => WaterTestingPackageDto.fromJson(e as Map<String, dynamic>),
          )
          .toList() ??
      const <WaterTestingPackageDto>[],
);

Map<String, dynamic> _$WaterTestingPackagesDtoToJson(
  _WaterTestingPackagesDto instance,
) => <String, dynamic>{
  'slug': instance.slug,
  'testPackages': instance.testPackages,
};

_WaterTestingPackageDto _$WaterTestingPackageDtoFromJson(
  Map<String, dynamic> json,
) => _WaterTestingPackageDto(
  id: json['id'] as String? ?? '',
  title: json['title'] as String? ?? '',
  price: (json['price'] as num?)?.toDouble() ?? 0,
  currency: json['currency'] as String? ?? '₹',
  reportTimeHours: (json['reportTimeHours'] as num?)?.toInt() ?? 0,
  features:
      (json['features'] as List<dynamic>?)?.map((e) => e as String).toList() ??
      const <String>[],
  icon: json['icon'] as String?,
  isDefault: json['isDefault'] as bool? ?? false,
);

Map<String, dynamic> _$WaterTestingPackageDtoToJson(
  _WaterTestingPackageDto instance,
) => <String, dynamic>{
  'id': instance.id,
  'title': instance.title,
  'price': instance.price,
  'currency': instance.currency,
  'reportTimeHours': instance.reportTimeHours,
  'features': instance.features,
  'icon': instance.icon,
  'isDefault': instance.isDefault,
};
