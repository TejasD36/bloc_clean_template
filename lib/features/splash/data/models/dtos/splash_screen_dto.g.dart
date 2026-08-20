// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'splash_screen_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SplashScreenDto _$SplashScreenDtoFromJson(Map<String, dynamic> json) =>
    _SplashScreenDto(
      app: json['app'] as String? ?? '',
      appName: json['appName'] as String? ?? '',
      version: AppVersionDto.fromJson(json['version'] as Map<String, dynamic>),
      businessSettings: BusinessSettingsDto.fromJson(
        json['businessSettings'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$SplashScreenDtoToJson(_SplashScreenDto instance) =>
    <String, dynamic>{
      'app': instance.app,
      'appName': instance.appName,
      'version': instance.version,
      'businessSettings': instance.businessSettings,
    };

_AppVersionDto _$AppVersionDtoFromJson(Map<String, dynamic> json) =>
    _AppVersionDto(
      platform: json['platform'] as String? ?? '',
      currentVersion: json['currentVersion'] as String? ?? '',
      latestVersion: json['latestVersion'] as String? ?? '',
      isUpdateAvailable: json['isUpdateAvailable'] as bool? ?? false,
      isForceUpdate: json['isForceUpdate'] as bool? ?? false,
      whatsNewMessage: json['whatsNewMessage'] as String?,
      storeUrl: json['storeUrl'] as String?,
    );

Map<String, dynamic> _$AppVersionDtoToJson(_AppVersionDto instance) =>
    <String, dynamic>{
      'platform': instance.platform,
      'currentVersion': instance.currentVersion,
      'latestVersion': instance.latestVersion,
      'isUpdateAvailable': instance.isUpdateAvailable,
      'isForceUpdate': instance.isForceUpdate,
      'whatsNewMessage': instance.whatsNewMessage,
      'storeUrl': instance.storeUrl,
    };

_BusinessSettingsDto _$BusinessSettingsDtoFromJson(Map<String, dynamic> json) =>
    _BusinessSettingsDto(
      appEmail: json['appEmail'] as String? ?? '',
      appPhone: json['appPhone'] as String? ?? '',
      currencySymbol: json['currencySymbol'] as String? ?? '',
      privacyPolicy: json['privacyPolicy'] as String? ?? '',
      termsAndConditions: json['termsAndConditions'] as String? ?? '',
      aboutUs: json['aboutUs'] as String? ?? '',
    );

Map<String, dynamic> _$BusinessSettingsDtoToJson(
  _BusinessSettingsDto instance,
) => <String, dynamic>{
  'appEmail': instance.appEmail,
  'appPhone': instance.appPhone,
  'currencySymbol': instance.currencySymbol,
  'privacyPolicy': instance.privacyPolicy,
  'termsAndConditions': instance.termsAndConditions,
  'aboutUs': instance.aboutUs,
};
