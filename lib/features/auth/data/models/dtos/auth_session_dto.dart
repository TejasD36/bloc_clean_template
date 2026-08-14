import 'user_dto.dart';

class AuthSessionDto {
  const AuthSessionDto({required this.token, required this.user});

  factory AuthSessionDto.fromJson(Map<String, dynamic> json) {
    final rawUser = json['user'];

    return AuthSessionDto(
      token: json['token']?.toString() ?? json['accessToken']?.toString() ?? '',
      user: UserDto.fromJson(
        rawUser is Map
            ? Map<String, dynamic>.from(rawUser)
            : const <String, dynamic>{},
      ),
    );
  }

  final String token;
  final UserDto user;
}
