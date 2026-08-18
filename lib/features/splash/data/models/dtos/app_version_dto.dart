import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_version_dto.freezed.dart';
part 'app_version_dto.g.dart';

@freezed
abstract class AppVersionDto with _$AppVersionDto {
  const factory AppVersionDto({
    @Default('') String platform,
    @Default('') String currentVersion,
    @Default('') String latestVersion,
    @Default(false) bool isUpdateAvailable,
    @Default(false) bool isForceUpdate,
  }) = _AppVersionDto;

  factory AppVersionDto.fromJson(Map<String, dynamic> json) => _$AppVersionDtoFromJson(json);
}
