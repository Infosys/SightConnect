class ServerException implements Exception {
  ServerException(this.message);

  final String message;

  @override
  String toString() => 'ServerException: $message';
}
