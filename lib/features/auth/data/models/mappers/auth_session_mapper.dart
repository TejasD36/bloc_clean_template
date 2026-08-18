import '../../../xcore.dart';

extension AuthSessionDtoMapper on AuthSessionDto {
  SessionEntity toEntity() {
    return SessionEntity(token: token, user: user.toEntity());
  }
}
