// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_version_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppVersionDto _$AppVersionDtoFromJson(Map<String, dynamic> json) =>
    _AppVersionDto(
      platform: json['platform'] as String? ?? '',
      currentVersion: json['currentVersion'] as String? ?? '',
      latestVersion: json['latestVersion'] as String? ?? '',
      isUpdateAvailable: json['isUpdateAvailable'] as bool? ?? false,
      isForceUpdate: json['isForceUpdate'] as bool? ?? false,
    );

Map<String, dynamic> _$AppVersionDtoToJson(_AppVersionDto instance) =>
    <String, dynamic>{
      'platform': instance.platform,
      'currentVersion': instance.currentVersion,
      'latestVersion': instance.latestVersion,
      'isUpdateAvailable': instance.isUpdateAvailable,
      'isForceUpdate': instance.isForceUpdate,
    };
