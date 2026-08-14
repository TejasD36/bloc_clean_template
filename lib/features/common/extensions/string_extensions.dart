extension StringExtensions on String? {
  bool get isNotNullOrEmpty => this != null && this!.isNotEmpty;

  /// Converts English digits (0-9) to Marathi digits (०-९).
  ///
  /// Example:
  /// '+91 9876543210'.toMarathiDigits
  /// => '+९१ ९८७६५४३२१०'
  String get toMarathiDigits {
    if (this == null || this!.isEmpty) {
      return '';
    }

    const englishDigits = '0123456789';
    const marathiDigits = '०१२३४५६७८९';

    return this!.split('').map((char) {
      final index = englishDigits.indexOf(char);
      return index == -1 ? char : marathiDigits[index];
    }).join();
  }
}
