class PatternNotFound implements Exception {
  String message;

  PatternNotFound(this.message);

  @override
  String toString() {
    return "Pattern not specified or not valid $message";
  }
}
