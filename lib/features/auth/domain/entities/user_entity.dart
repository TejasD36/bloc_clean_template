import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_entity.freezed.dart';

@freezed
abstract class UserEntity with _$UserEntity {
  const factory UserEntity({
    required String id,
    String? name,
    String? email,
    String? photoUrl,
    required bool isEmailVerified,
    @Default('') String phoneNumber,
    @Default(true) bool status,
    int? role,
    @Default(false) bool isAnonymous,
  }) = _UserEntity;
}
