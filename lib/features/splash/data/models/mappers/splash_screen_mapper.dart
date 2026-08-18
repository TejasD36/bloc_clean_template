import '../../../../common/domain/entities/business_settings_entity.dart';
import '../../../domain/entities/app_version_entity.dart';
import '../../../domain/entities/splash_screen_entity.dart';
import '../dtos/splash_screen_dto.dart';

extension SplashScreenDtoMapper on SplashScreenDto {
  SplashScreenEntity toEntity() {
    return SplashScreenEntity(app: app, appName: appName, version: version.toEntity(), businessSettings: businessSettings.toEntity());
  }
}

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

extension BusinessSettingsDtoMapper on BusinessSettingsDto {
  BusinessSettingsEntity toEntity() {
    return BusinessSettingsEntity(
      appEmail: appEmail,
      appPhone: appPhone,
      currencySymbol: currencySymbol,
      privacyPolicy: privacyPolicy,
      termsAndConditions: termsAndConditions,
      aboutUs: aboutUs,
    );
  }
}
