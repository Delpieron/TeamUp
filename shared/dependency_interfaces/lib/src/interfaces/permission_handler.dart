typedef Permission = Object;

abstract interface class PermissionHandler {
  Future<bool> requestPermissions(Iterable<Permission> permissions);

  Future<bool> retryRequests();

  void clear();
}
