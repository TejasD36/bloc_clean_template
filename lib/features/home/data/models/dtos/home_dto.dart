import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_dto.freezed.dart';
part 'home_dto.g.dart';

@freezed
abstract class HomeDto with _$HomeDto {
  const factory HomeDto({
    @Default('') String userName,
    @Default(<HomeBannerDto>[]) List<HomeBannerDto> banners,
    @Default(<HomeServiceDto>[]) List<HomeServiceDto> services,
  }) = _HomeDto;

  factory HomeDto.fromJson(Map<String, dynamic> json) =>
      _$HomeDtoFromJson(json);
}

@freezed
abstract class HomeBannerDto with _$HomeBannerDto {
  const factory HomeBannerDto({
    @Default(0) int id,
    @Default('') String image,
    String? linkUrl,
  }) = _HomeBannerDto;

  factory HomeBannerDto.fromJson(Map<String, dynamic> json) =>
      _$HomeBannerDtoFromJson(json);
}

@freezed
abstract class HomeServiceDto with _$HomeServiceDto {
  const factory HomeServiceDto({
    @Default(0) int id,
    @Default('') String name,
    @Default('') String slug,
    @Default('') String description,
    @Default('') String icon,
    @Default(false) bool isPaymentRequired,
  }) = _HomeServiceDto;

  factory HomeServiceDto.fromJson(Map<String, dynamic> json) =>
      _$HomeServiceDtoFromJson(json);
}
