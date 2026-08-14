class InputValidators {
  InputValidators._();

  static String? required(String? value, {required String message}) {
    if (value == null || value.trim().isEmpty) return message;
    return null;
  }

  static String? mobileNumber(
    String? value, {
    required String emptyMessage,
    required String invalidMessage,
  }) {
    final mobile = value?.trim() ?? '';
    if (mobile.isEmpty) return emptyMessage;

    if (!RegExp(r'^[0-9]{10}$').hasMatch(mobile)) return invalidMessage;
    return null;
  }

  static String? email(
    String? value, {
    required String emptyMessage,
    required String invalidMessage,
  }) {
    final email = value?.trim() ?? '';
    if (email.isEmpty) return emptyMessage;
    final emailRegex = RegExp(
      r'^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$',
    );
    if (!emailRegex.hasMatch(email)) return invalidMessage;
    return null;
  }

  /// Accepts either a valid email or a valid 10-digit mobile number.
  static String? emailOrMobile(
    String? value, {
    required String emptyMessage,
    required String invalidMessage,
  }) {
    final input = value?.trim() ?? '';

    if (input.isEmpty) return emptyMessage;
    final isMobile = RegExp(r'^[0-9]{10}$').hasMatch(input);
    final isEmail = RegExp(
      r'^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}$',
    ).hasMatch(input);
    if (!isMobile && !isEmail) return invalidMessage;
    return null;
  }

  static String? password(
    String? value, {
    required String emptyMessage,
    required String invalidMessage,
  }) {
    final password = value?.trim() ?? '';
    if (password.isEmpty) return emptyMessage;
    if (password.length < 8) return invalidMessage;
    return null;
  }

  static String? fullName(
    String? value, {
    required String emptyMessage,
    required String invalidMessage,
  }) {
    final name = value?.trim() ?? '';
    if (name.isEmpty) return emptyMessage;

    // Marathi + English letters, spaces, dot, apostrophe and hyphen
    final regex = RegExp(
      r"^[a-zA-Z\u0900-\u097F]+([ .'-][a-zA-Z\u0900-\u097F]+)*$",
    );

    if (!regex.hasMatch(name)) return invalidMessage;
    return null;
  }

  /// Accepts letters and spaces for generic short text fields.
  static String? text(
    String? value, {
    required String emptyMessage,
    required String invalidMessage,
  }) {
    final text = value?.trim() ?? '';

    if (text.isEmpty) return emptyMessage;

    // Unicode letters and spaces only.
    final regex = RegExp(r'^[a-zA-Z\u0900-\u097F ]+$');

    if (!regex.hasMatch(text)) return invalidMessage;
    return null;
  }
}
