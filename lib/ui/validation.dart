class FormValidator {
  static String? validateFirstName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your first name';
    }
    return null;
  }

  static String? validateLastName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your last name';
    }
    return null;
  }

  static String? validateAddress(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your address';
    }
    return null;
  }

  static String? validateNationality(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your nationality';
    }
    return null;
  }

  static String? validatePurposeOfEntry(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter the purpose of entry';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your phone number';
    }
    return null;
  }

  static String? validateGender(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your gender';
    }
    return null;
  }

  static String? validateStateOfResidence(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter your state of residence';
    }
    return null;
  }
}
