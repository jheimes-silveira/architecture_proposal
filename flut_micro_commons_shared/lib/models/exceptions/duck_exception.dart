class DuckException implements Exception {
  final String message;
  final String error;

  DuckException(this.message, this.error);
}