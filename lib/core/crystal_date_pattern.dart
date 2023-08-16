class CrystalDatePattern {
  //2023
  static RegExp yyyy = RegExp(r'\byyyy\b', caseSensitive: false);

  //23
  static RegExp yy = RegExp(r'\byy\b', caseSensitive: false);

  //october
  static RegExp MMMM = RegExp(r'\bMMMM\b', caseSensitive: true);

  //oct.
  static RegExp MMM = RegExp(r'\bMMM\b', caseSensitive: true);

  //10
  static RegExp MM = RegExp(r'\bMM\b', caseSensitive: true);

  // 9 : month<10
  static RegExp M = RegExp(r'\bM\b', caseSensitive: true);

  // 3 date‹10
  static RegExp d = RegExp(r'\bd\b', caseSensitive: false);

  // 04
  static RegExp dd = RegExp(r'\bdd\b', caseSensitive: false);

  // Fri
  static RegExp ddd = RegExp(r'\bddd\b', caseSensitive: false);

  // Friday
  static RegExp dddd = RegExp(r'\bdddd\b', caseSensitive: false);

  // hour
  static RegExp hh = RegExp(r'\bhh\b', caseSensitive: false);
  // minutes
  static RegExp mm = RegExp(r'\bmm\b', caseSensitive: true);
  // secondes
  static RegExp ss = RegExp(r'\bss\b', caseSensitive: false);
}
