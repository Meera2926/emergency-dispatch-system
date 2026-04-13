class Validators {
  Validators._();

  static bool isValidLatitude(double lat) => lat >= -90.0 && lat <= 90.0;
  static bool isValidLongitude(double lng) => lng >= -180.0 && lng <= 180.0;

  static bool isValidPhoneNumber(String phone) {
    final cleaned = phone.replaceAll(RegExp(r'[\s\-\(\)]'), '');
    return RegExp(r'^\+?[0-9]{7,15}$').hasMatch(cleaned);
  }

  static bool isValidEmergencyMessage(String text) {
    return text.trim().isNotEmpty && text.trim().length <= 500;
  }
}
