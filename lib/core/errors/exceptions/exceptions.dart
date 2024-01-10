class ServerException implements Exception {
  final String? message;
  ServerException({
    this.message,
  });
}

class ConnectionException implements Exception {}

class NotAuthorizedException implements Exception {}

class LocalStorageException implements Exception {}
