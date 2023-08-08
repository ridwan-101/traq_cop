class FormValidator {
  static String? validateFirstName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please fill out this field';
    }
    return null;
  }

  static String? validateLastName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please fill out this field';
    }
    return null;
  }

  static String? validateAddress(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please fill out this field';
    }
    return null;
  }

  static String? validateNationality(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please selcect';
    }
    return null;
  }

  static String? validatePurposeOfEntry(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please select';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please fill out this field';
    }
    return null;
  }

  static String? validateGender(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please select';
    }
    return null;
  }

  static String? validateStateOfResidence(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please select';
    }
    return null;
  }

  static String? validateUserName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Invalid username';
    }
    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'invalid password';
    }
    return null;
  }
}
