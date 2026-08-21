import '../../../../../core/network/config/api_config.dart';
import '../../../domain/entities/tanker_capacity_entity.dart';
import '../dtos/tanker_capacity_dto.dart';

extension TankerCapacitiesMapper on TankerCapacitiesDto {
  List<TankerCapacityEntity> toEntities() {
    return capacityOptions.map((option) => option.toEntity()).toList();
  }
}

extension TankerCapacityMapper on TankerCapacityDto {
  TankerCapacityEntity toEntity() {
    return TankerCapacityEntity(
      id: id,
      title: title,
      capacityLiters: capacityLiters,
      description: description,
      price: price,
      currency: currency,
      imageUrl: _storageUrl(image),
    );
  }
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
