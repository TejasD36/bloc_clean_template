import 'package:get_it/get_it.dart';

import '../services/app_info_service.dart';

class HeaderKey {
  const HeaderKey._();

  static const String accept = 'accept';
  static const String contentType = 'content-type';
  static const String authorization = 'authorization';
  static const String integrityToken = 'X-Integrity-Token';
  static const String appSecret = 'X-App-Secret';
  static const String platform = 'X-Platform';
  static const String version = 'X-Version';
  static const String deviceId = 'X-Device-ID';
  static const String deviceInfo = 'X-Device-Info';

  static Map<String, dynamic> get defaultHeaders {
    final appInfo = GetIt.instance<AppInfoService>();

    return {
      accept: 'application/json',
      contentType: 'application/json',
      platform: appInfo.platform,
      version: appInfo.version,
    };
  }
}
