import '../../../domain/entities/home_entity.dart';
import '../dtos/home_dto.dart';

extension HomeMapper on HomeDto {
  HomeEntity toEntity() {
    // TODO: Map DTO to Entity.
    return const HomeEntity();
  }
}
