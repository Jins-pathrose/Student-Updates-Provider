class Validations {
  static String? nameValidator(
    String? value,
  ) {
    final trimmedvalue = value?.trim();

    if (trimmedvalue == null || trimmedvalue.isEmpty) {
      return 'Enter Your Name';
    }
    final RegExp nameRegExp = RegExp(r'^[a-zA-Z ]+$');

    if (!nameRegExp.hasMatch(trimmedvalue)) {
      return 'Full Name only contains letters';
    }
    return null;
  }

  static String? phoneValidator(
    String? value,
  ) {
    final trimmedvalue = value?.trim();

    if (trimmedvalue == null || trimmedvalue.isEmpty) {
      return 'Enter your Phone Number';
    }

    final RegExp phoneRegExp =
        RegExp(r'^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$');

    if (!phoneRegExp.hasMatch(trimmedvalue)) {
      return 'Enter your Number';
    }
    return null;
  }
}
