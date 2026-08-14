import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_entity.freezed.dart';

@freezed
abstract class SessionEntity with _$SessionEntity {
  const factory SessionEntity({
    required String userId,
    String? accessToken,
    DateTime? lastLoginAt,
  }) = _SessionEntity;
}
