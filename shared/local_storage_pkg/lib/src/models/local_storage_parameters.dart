class LocalStorageParameters<T> {
  LocalStorageParameters({required this.key, this.data, this.fromJson, this.predicate});

  final String key;
  final Object? data;
  final T Function(dynamic)? fromJson;
  bool Function(T)? predicate;
}
