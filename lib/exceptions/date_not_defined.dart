class DateNotDefinedException implements Exception {
  final String message;

  const DateNotDefinedException(this.message);

  @override
  String toString() {
    return "Date not be specified $message";
  }
}
