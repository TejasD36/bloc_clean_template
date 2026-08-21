import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_entity.freezed.dart';

@freezed
abstract class HomeEntity with _$HomeEntity {
  const factory HomeEntity({
    @Default('') String userName,
    @Default(<HomeBannerEntity>[]) List<HomeBannerEntity> banners,
    @Default(<HomeServiceEntity>[]) List<HomeServiceEntity> services,
  }) = _HomeEntity;
}

@freezed
abstract class HomeBannerEntity with _$HomeBannerEntity {
  const factory HomeBannerEntity({
    required int id,
    required String imageUrl,
    String? linkUrl,
  }) = _HomeBannerEntity;
}

@freezed
abstract class HomeServiceEntity with _$HomeServiceEntity {
  const factory HomeServiceEntity({
    required int id,
    required String name,
    required String slug,
    required String description,
    required String iconUrl,
    required bool isPaymentRequired,
  }) = _HomeServiceEntity;
}
