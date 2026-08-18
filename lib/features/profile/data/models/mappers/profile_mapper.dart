import '../dtos/profile_dto.dart';
import '../../../domain/entities/profile_entity.dart';

extension ProfileMapper on ProfileDto {
  ProfileEntity toEntity() {
    // TODO: Map DTO to Entity.
    return const ProfileEntity();
  }
}