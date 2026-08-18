class BusinessSettingsEntity {
  const BusinessSettingsEntity({
    required this.appEmail,
    required this.appPhone,
    required this.currencySymbol,
    required this.privacyPolicy,
    required this.termsAndConditions,
    required this.aboutUs,
  });

  final String appEmail;
  final String appPhone;
  final String currencySymbol;
  final String privacyPolicy;
  final String termsAndConditions;
  final String aboutUs;
}
