import 'package:freezed_annotation/freezed_annotation.dart';

part 'splash_screen_dto.freezed.dart';
part 'splash_screen_dto.g.dart';

@freezed
abstract class SplashScreenDto with _$SplashScreenDto {
  const factory SplashScreenDto({
    @Default('') String app,
    @Default('') String appName,
    required AppVersionDto version,
    required BusinessSettingsDto businessSettings,
  }) = _SplashScreenDto;

  factory SplashScreenDto.fromJson(Map<String, dynamic> json) => _$SplashScreenDtoFromJson(json);
}

@freezed
abstract class AppVersionDto with _$AppVersionDto {
  const factory AppVersionDto({
    @Default('') String platform,
    @Default('') String currentVersion,
    @Default('') String latestVersion,
    @Default(false) bool isUpdateAvailable,
    @Default(false) bool isForceUpdate,
    String? whatsNewMessage,
    String? storeUrl,
  }) = _AppVersionDto;

  factory AppVersionDto.fromJson(Map<String, dynamic> json) => _$AppVersionDtoFromJson(json);
}

@freezed
abstract class BusinessSettingsDto with _$BusinessSettingsDto {
  const factory BusinessSettingsDto({
    @Default('') String appEmail,
    @Default('') String appPhone,
    @Default('') String currencySymbol,
    @Default('') String privacyPolicy,
    @Default('') String termsAndConditions,
    @Default('') String aboutUs,
  }) = _BusinessSettingsDto;

  factory BusinessSettingsDto.fromJson(Map<String, dynamic> json) => _$BusinessSettingsDtoFromJson(json);
}
