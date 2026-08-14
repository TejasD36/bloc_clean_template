abstract interface class StorageService<T> {
  Future<void> save({required String key, required T value});
  Future<T?> read(String key);
  Future<void> remove(String key);
  Future<void> clear();
}
