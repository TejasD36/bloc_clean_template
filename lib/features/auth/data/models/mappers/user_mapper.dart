import '../../../xcore.dart';

extension UserDtoMapper on UserDto {
  UserEntity toEntity() {
    return UserEntity(
      id: id,
      name: name,
      email: email,
      photoUrl: photoUrl,
      isEmailVerified: isEmailVerified,
      isAnonymous: isAnonymous,
      status: status,
      role: role,
    );
  }
}

extension UserEntityMapper on UserEntity {
  UserDto toDto() {
    return UserDto(
      id: id,
      name: name,
      email: email,
      photoUrl: photoUrl,
      isEmailVerified: isEmailVerified,
      isAnonymous: isAnonymous,
      status: status,
      role: role,
    );
  }
}
