// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_settings_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
