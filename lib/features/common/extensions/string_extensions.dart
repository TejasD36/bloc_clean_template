import '../../../core/network/config/api_config.dart';

extension StringExtensions on String? {
  bool get isNotNullOrEmpty => this != null && this!.isNotEmpty;

  ///Build Storage URL
  String get buildStorageUrl {
    if (this == null || this!.isEmpty) {
      return '';
    }

    final value = this!.trim();
    if (value.startsWith('http://') || value.startsWith('https://')) return value;

    final base = ApiConfig.storageUrl.endsWith('/') ? ApiConfig.storageUrl : '${ApiConfig.storageUrl}/';
    final normalizedPath = value.startsWith('/') ? value.substring(1) : value;

    return '$base$normalizedPath';
  }
}
