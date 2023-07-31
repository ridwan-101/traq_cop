class FormValidator {
  // Validate First Name field
  static String? validateFirstName(String? value) {
    if (value == null || value.isEmpty) {
      return 'First Name is required';
    }
    // You can add additional checks like minimum/maximum length or specific character patterns here.
    return null;
  }

  // Validate Last Name field
  static String? validateLastName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Last Name is required';
    }
    // You can add additional checks like minimum/maximum length or specific character patterns here.
    return null;
  }

  // Validate Email Address field
  static String? validateEmailAddress(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email Address is required';
    }
    // You can use regular expressions to check if the email is in the correct format.
    // For example: https://regexlib.com/REDetails.aspx?regexp_id=26
    // Alternatively, you can use the `email_validator` package from pub.dev.
    return null;
  }

  // Validate Phone Number field
  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty) {
      return 'Phone Number is required';
    }
    // You can use regular expressions to check if the phone number is in the correct format.
    // For example: https://regexlib.com/REDetails.aspx?regexp_id=1808
    return null;
  }

  // Validate Address field
  static String? validateAddress(String? value) {
    if (value == null || value.isEmpty) {
      return 'Address is required';
    }
    // You can add additional checks like minimum/maximum length or specific character patterns here.
    return null;
  }

  // Validate Gender field
  static String? validateGender(String? value) {
    if (value == null || value.isEmpty) {
      return 'Gender is required';
    }
    // You can add additional checks if necessary (e.g., should be 'Male', 'Female', 'Other', etc.).
    return null;
  }

  // Validate Nationality field
  static String? validateNationality(String? value) {
    if (value == null || value.isEmpty) {
      return 'Nationality is required';
    }
    // You can add additional checks like minimum/maximum length or specific character patterns here.
    return null;
  }

  static String? validateStateOfResidence(String? value) {
    if (value == null || value.isEmpty) {
      return 'State of Residence is required';
    }

    return null;
  }

  static String? validatePurposeOfEntry(String? value) {
    if (value == null || value.isEmpty) {
      return 'Purpose of Entry is required';
    }

    return null;
  }
}
