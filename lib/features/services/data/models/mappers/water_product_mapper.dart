import '../../../../../core/network/config/api_config.dart';
import '../../../domain/entities/water_product_entity.dart';
import '../dtos/water_product_dto.dart';

extension WaterProductsMapper on WaterProductsDto {
  List<WaterProductEntity> toEntities() =>
      products.map((product) => product.toEntity()).toList();
}

extension WaterProductMapper on WaterProductDto {
  WaterProductEntity toEntity() => WaterProductEntity(
    id: id,
    title: title,
    price: price,
    currency: currency,
    imageUrl: _storageUrl(image),
    defaultQuantity: defaultQuantity,
  );
}

String _storageUrl(String? path) {
  final value = path?.trim() ?? '';
  if (value.isEmpty ||
      value.startsWith('http://') ||
      value.startsWith('https://')) {
    return value;
  }
  final base = ApiConfig.storageUrl.endsWith('/')
      ? ApiConfig.storageUrl
      : '${ApiConfig.storageUrl}/';
  return '$base${value.startsWith('/') ? value.substring(1) : value}';
}
