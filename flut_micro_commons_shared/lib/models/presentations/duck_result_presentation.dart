class DuckResultPresentation {
  final String? message;
  final bool success;
  final String error;
  final dynamic payload;

  DuckResultPresentation({
    this.success = true,
    this.message,
    this.error = '',
    this.payload,
  });
}
