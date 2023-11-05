final class StringUtil {
  static bool isEmpty(String? s) {
    return s == null || s.isEmpty;
  }

  static bool isNotEmpty(String? s) {
    return s != null && s.isNotEmpty;
  }

  static bool hasUpperCase(String password) {
    return RegExp('(?:[A-Z])').hasMatch(password);
  }

  static bool hasLowerCase(String password) {
    return RegExp('(?:[a-z])').hasMatch(password);
  }

  static bool hasSymbol(String password) {
    return RegExp(r"[!@#$%^&*(),\|+=;.?':{}|<>]").hasMatch(password);
  }

  static bool hasNumber(String password) {
    return RegExp('(?=.*?[0-9])').hasMatch(password);
  }

  static bool isValidEmail(String email) {
    return RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
    ).hasMatch(email);
  }
}
