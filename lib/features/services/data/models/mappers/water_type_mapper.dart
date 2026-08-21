import '../../../../../core/network/config/api_config.dart';
import '../../../domain/entities/water_type_entity.dart';
import '../dtos/water_type_dto.dart';

extension WaterTypesMapper on WaterTypesDto {
  List<WaterTypeEntity> toEntities() {
    return waterTypeOptions.map((option) => option.toEntity()).toList();
  }
}

extension WaterTypeMapper on WaterTypeDto {
  WaterTypeEntity toEntity() {
    return WaterTypeEntity(
      id: id,
      title: title,
      description: description,
      iconUrl: _storageUrl(icon),
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
