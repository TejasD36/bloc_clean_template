import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_ce/hive.dart';

import '../../../../../core/storage/constants/hive_type_ids.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
@HiveType(typeId: HiveTypeIds.user)
sealed class UserDto with _$UserDto {
  const factory UserDto({
    @HiveField(0) @JsonKey(fromJson: _stringFromJson) required String id,
    @HiveField(1) String? name,
    @HiveField(2) String? email,
    @HiveField(3) String? photoUrl,
    @HiveField(4)
    @JsonKey(fromJson: _boolFromJson)
    @Default(false)
    bool isEmailVerified,
    @HiveField(5) @Default('') String phoneNumber,
    @HiveField(8)
    @JsonKey(fromJson: _boolFromJson)
    @Default(false)
    bool isAnonymous,
    @HiveField(12)
    @JsonKey(fromJson: _boolFromJson, defaultValue: true)
    @Default(true)
    bool status,
    @HiveField(13) @JsonKey(fromJson: _nullableIntFromJson) int? role,
  }) = _UserDto;

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(_normalizeUserJson(json));
}

String _stringFromJson(Object? value) => value?.toString() ?? '';

int? _nullableIntFromJson(Object? value) =>
    int.tryParse(value?.toString() ?? '');

bool _boolFromJson(Object? value) {
  if (value is bool) return value;
  final normalized = value?.toString().toLowerCase();
  return normalized == '1' || normalized == 'true';
}

Map<String, dynamic> _normalizeUserJson(Map<String, dynamic> json) {
  final normalized = Map<String, dynamic>.from(json);

  normalized['isEmailVerified'] ??= json['is_email_verified'];
  normalized['photoUrl'] ??= json['avatar'];
  normalized['phoneNumber'] ??= json['phone_number'];

  return normalized;
}
