import '../../../../../core/network/config/api_config.dart';
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
    return HomeBannerEntity(
      id: id,
      imageUrl: _buildStorageUrl(image),
      linkUrl: linkUrl,
    );
  }
}

extension HomeServiceMapper on HomeServiceDto {
  HomeServiceEntity toEntity() {
    return HomeServiceEntity(
      id: id,
      name: name,
      slug: slug,
      description: description,
      iconUrl: _buildStorageUrl(icon),
      isPaymentRequired: isPaymentRequired,
    );
  }
}

String _buildStorageUrl(String path) {
  final value = path.trim();
  if (value.isEmpty) return '';
  if (value.startsWith('http://') || value.startsWith('https://')) return value;

  final base = ApiConfig.storageUrl.endsWith('/')
      ? ApiConfig.storageUrl
      : '${ApiConfig.storageUrl}/';
  final normalizedPath = value.startsWith('/') ? value.substring(1) : value;

  return '$base$normalizedPath';
}
