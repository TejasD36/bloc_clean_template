import 'dart:io';

import 'package:package_info_plus/package_info_plus.dart';

class AppInfoService {
  const AppInfoService({
    required this.version,
    required this.platform,
  });

  static Future<AppInfoService> fromPlatform() async {
    final packageInfo = await PackageInfo.fromPlatform();

    return AppInfoService(
      version: packageInfo.version,
      platform: Platform.isAndroid ? 'android' : 'ios',
    );
  }

  final String version;
  final String platform;
}
