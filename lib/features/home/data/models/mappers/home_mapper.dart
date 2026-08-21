import 'package:pwh_customer/core.dart';

import '../../../domain/entities/home_entity.dart';
import '../dtos/home_dto.dart';

extension HomeMapper on HomeDto {
  HomeEntity toEntity() {
    return HomeEntity(
      userName: userName,
      banners: banners.map((banner) => banner.toEntity()).toList(),
      services: services.map((service) => service.toEntity()).toList(),
    );
  }
}

extension HomeBannerMapper on HomeBannerDto {
  HomeBannerEntity toEntity() {
    return HomeBannerEntity(id: id, imageUrl: image.buildStorageUrl, linkUrl: linkUrl);
  }
}

extension HomeServiceMapper on HomeServiceDto {
  HomeServiceEntity toEntity() {
    return HomeServiceEntity(
      id: id,
      name: name,
      slug: slug,
      description: description,
      iconUrl: icon.buildStorageUrl,
      isPaymentRequired: isPaymentRequired,
    );
  }
}
