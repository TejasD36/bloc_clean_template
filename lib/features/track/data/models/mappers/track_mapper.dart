import '../../../domain/entities/track_entity.dart';
import '../dtos/track_dto.dart';

extension TrackMapper on TrackDto {
  TrackEntity toEntity() {
    // TODO: Map DTO to Entity.
    return const TrackEntity();
  }
}
