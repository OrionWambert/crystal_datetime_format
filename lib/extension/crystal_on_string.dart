extension CrystalizeString on String {

  bool endsWithIgnoreCase(String pattern) {
    return toLowerCase().endsWith(pattern.toLowerCase());
  }
}
