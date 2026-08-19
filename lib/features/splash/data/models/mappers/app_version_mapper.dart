import '../../../domain/entities/app_version_entity.dart';
import '../dtos/splash_screen_dto.dart';


extension AppVersionDtoMapper on AppVersionDto {
  AppVersionEntity toEntity() {
    return AppVersionEntity(
      platform: platform,
      currentVersion: currentVersion,
      latestVersion: latestVersion,
      isUpdateAvailable: isUpdateAvailable,
      isForceUpdate: isForceUpdate,
    );
  }
}

