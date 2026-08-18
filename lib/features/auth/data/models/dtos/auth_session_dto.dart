import 'user_dto.dart';

class AuthSessionDto {
  const AuthSessionDto({
    required this.token,
    this.tokenType,
    required this.user,
  });

  factory AuthSessionDto.fromJson(Map<String, dynamic> json) {
    final rawUser = json['user'];

    return AuthSessionDto(
      token: json['token']?.toString() ?? json['accessToken']?.toString() ?? '',
      tokenType: json['tokenType']?.toString(),
      user: UserDto.fromJson(
        rawUser is Map
            ? Map<String, dynamic>.from(rawUser)
            : const <String, dynamic>{},
      ),
    );
  }

  final String token;
  final String? tokenType;
  final UserDto user;
}
