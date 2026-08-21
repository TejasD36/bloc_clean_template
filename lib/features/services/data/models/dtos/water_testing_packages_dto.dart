import 'package:freezed_annotation/freezed_annotation.dart';

part 'water_testing_packages_dto.freezed.dart';
part 'water_testing_packages_dto.g.dart';

@freezed
abstract class WaterTestingPackagesDto with _$WaterTestingPackagesDto {
  const factory WaterTestingPackagesDto({
    @Default('') String slug,
    @Default(<WaterTestingPackageDto>[]) List<WaterTestingPackageDto> testPackages,
  }) = _WaterTestingPackagesDto;

  factory WaterTestingPackagesDto.fromJson(Map<String, dynamic> json) =>
      _$WaterTestingPackagesDtoFromJson(json);
}

@freezed
abstract class WaterTestingPackageDto with _$WaterTestingPackageDto {
  const factory WaterTestingPackageDto({
    @Default('') String id,
    @Default('') String title,
    @Default(0) double price,
    @Default('₹') String currency,
    @Default(0) int reportTimeHours,
    @Default(<String>[]) List<String> features,
    String? icon,
    @Default(false) bool isDefault,
  }) = _WaterTestingPackageDto;

  factory WaterTestingPackageDto.fromJson(Map<String, dynamic> json) =>
      _$WaterTestingPackageDtoFromJson(json);
}
