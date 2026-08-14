import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../secure_storage_service.dart';

class SecureStorageServiceImpl implements SecureStorageService {
  const SecureStorageServiceImpl(this._secureStorage);

  final FlutterSecureStorage _secureStorage;

  @override
  Future<void> save({required String key, required String value}) async {
    await _secureStorage.write(key: key, value: value);
  }

  @override
  Future<String?> read(String key) async {
    return _secureStorage.read(key: key);
  }

  @override
  Future<void> remove(String key) async {
    await _secureStorage.delete(key: key);
  }

  @override
  Future<void> clear() async {
    await _secureStorage.deleteAll();
  }
}
