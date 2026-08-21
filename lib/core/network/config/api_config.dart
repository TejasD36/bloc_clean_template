import '../constants/header_key.dart';

class ApiConfig {
  const ApiConfig._();

  static const String baseUrl = String.fromEnvironment(
    'baseUrl',
    defaultValue: 'https://slategray-donkey-607049.hostingersite.com/',
  );

  static const String storageUrl = String.fromEnvironment(
    'storageUrl',
    defaultValue:
        'https://slategray-donkey-607049.hostingersite.com/storage/app/public/',
  );

  static const Duration connectTimeout = Duration(seconds: 30);

  static const Duration receiveTimeout = Duration(seconds: 30);

  static const Duration sendTimeout = Duration(seconds: 30);

  static Map<String, dynamic> get defaultHeaders => HeaderKey.defaultHeaders;
}
