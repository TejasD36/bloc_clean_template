import 'package:hive_ce/hive_ce.dart';

import '../hive_storage_service.dart';

class HiveStorageServiceImpl<T> implements HiveStorageService<T> {
  const HiveStorageServiceImpl(this._box);

  final Box<T> _box;

  @override
  Future<void> save({required String key, required T value}) async {
    await _box.put(key, value);
  }

  @override
  Future<T?> read(String key) async {
    return _box.get(key);
  }

  @override
  Future<void> remove(String key) async {
    await _box.delete(key);
  }

  @override
  Future<void> clear() async {
    await _box.clear();
  }
}
