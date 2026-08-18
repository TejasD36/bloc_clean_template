import '../../../../splash/data/models/dtos/splash_screen_dto.dart';
import '../../../domain/entities/business_settings_entity.dart';

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
