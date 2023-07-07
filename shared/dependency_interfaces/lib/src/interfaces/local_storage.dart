abstract class LocalStorage {
  Future<T?> loadData<T>(String key, T Function(dynamic) fromJson);

  Future<bool> storeData(String key, Object object);

  Future<bool> replaceOnList<T>(String key, T toEdit, T Function(dynamic) fromJson, bool Function(dynamic) predicate);

  Future<bool> deleteData(String key);

  Future<bool> removeFromList<T>(String key, List<T> toRemove, T Function(dynamic) fromJson);
}
