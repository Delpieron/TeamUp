typedef Permission = Object;

abstract class PermissionHandler {
  Future<bool> requestPermissions(Iterable<Permission> permissions);

  Future<bool> retryRequests();

  void clear();
}
