import '../../../xcore.dart';

abstract interface class AuthLocalDatasource {
  Future<void> saveUser(UserDto user);
  Future<UserDto?> getUser();
  Future<void> saveAccessToken(String accessToken);
  Future<String?> getAccessToken();
  Future<void> clearAuthData();
}
