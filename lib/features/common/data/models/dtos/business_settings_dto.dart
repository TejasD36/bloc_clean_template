import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_settings_dto.freezed.dart';
part 'business_settings_dto.g.dart';

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
