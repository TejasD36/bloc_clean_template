import 'package:freezed_annotation/freezed_annotation.dart';

import 'user_entity.dart';

part 'session_entity.freezed.dart';

@freezed
abstract class SessionEntity with _$SessionEntity {
  const factory SessionEntity({
    required String token,
    required UserEntity user,
  }) = _SessionEntity;
}
