import '../domain/entities/business_settings_entity.dart';

class BusinessSettingsStore {
  BusinessSettingsEntity? _settings;

  BusinessSettingsEntity? get settings => _settings;

  bool get hasSettings => _settings != null;

  void setSettings(BusinessSettingsEntity settings) {
    _settings = settings;
  }

  void clear() {
    _settings = null;
  }
}
