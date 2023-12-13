class Failure implements Exception {
  Failure(this.message);

  final String message;

  @override
  String toString() => 'Failure: $message';
}

class ServerException implements Failure {
  ServerException(this.message);

  @override
  final String message;

  @override
  String toString() => 'ServerException: $message';
}

class CacheException implements Failure {
  CacheException(this.message);

  @override
  final String message;

  @override
  String toString() => 'CacheException: $message';
}
