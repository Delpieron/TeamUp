sealed class LocalStorageCommand {
  LocalStorageCommand._();

  static const dispose = 'dispose';

  /// Load
  static const loadData = 'loadData';

  /// Add
  static const storeData = 'storeData';

  /// Edit
  static const replaceOnList = 'replaceOnList';

  /// Delete
  static const deleteData = 'deleteData';
  static const removeFromList = 'removeFromList';
}
