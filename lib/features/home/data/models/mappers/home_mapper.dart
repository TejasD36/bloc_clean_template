import '../dtos/home_dto.dart';
import '../../../domain/entities/home_entity.dart';

extension HomeMapper on HomeDto {
  HomeEntity toEntity() {
    // TODO: Map DTO to Entity.
    return const HomeEntity();
  }
}