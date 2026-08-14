import '../../../../../core.dart';
import '../../../xcore.dart';

class AuthLocalDatasourceImpl implements AuthLocalDatasource {
  const AuthLocalDatasourceImpl({
    required this._secureStorage,
    required this._userStorage,
  });

  final SecureStorageService _secureStorage;
  final HiveStorageService<UserDto> _userStorage;

  @override
  Future<void> clearAuthData() async {
    await Future.wait([
      _secureStorage.remove(StorageKeys.jwtToken),
      _userStorage.remove(StorageKeys.user),
    ]);
  }

  @override
  Future<UserDto?> getUser() {
    return _userStorage.read(StorageKeys.user);
  }

  @override
  Future<void> saveUser(UserDto user) async {
    await _userStorage.save(key: StorageKeys.user, value: user);
  }

  @override
  Future<void> saveAccessToken(String accessToken) async {
    await _secureStorage.save(key: StorageKeys.jwtToken, value: accessToken);
  }

  @override
  Future<String?> getAccessToken() {
    return _secureStorage.read(StorageKeys.jwtToken);
  }
}
