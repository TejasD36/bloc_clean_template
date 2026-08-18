import '../../../common/domain/entities/business_settings_entity.dart';
import 'app_version_entity.dart';

class SplashScreenEntity {
  const SplashScreenEntity({required this.app, required this.appName, required this.version, required this.businessSettings});

  final String app;
  final String appName;
  final AppVersionEntity version;
  final BusinessSettingsEntity businessSettings;
}
