class AppVersionEntity {
  const AppVersionEntity({
    required this.platform,
    required this.currentVersion,
    required this.latestVersion,
    required this.isUpdateAvailable,
    required this.isForceUpdate,
    this.whatsNewMessage,
    this.storeUrl,
  });

  final String platform;
  final String currentVersion;
  final String latestVersion;
  final bool isUpdateAvailable;
  final bool isForceUpdate;
  final String? whatsNewMessage;
  final String? storeUrl;
}