class EValidator {
  static String ? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email; is Required.';
    }


    //Regular expression for email verification

    final emailRegExp = RegExp(r'^[\w-\.]+@(\w-]+\.)+[\w-]{2,4}$');

    if (!emailRegExp.hasMatch(value)) {
      return 'Invalid Email addresses';
    }
    return null;
  }

  static  String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required.';
    }

    //check for minimum password length

    if (value.length < 6) {
      return 'Password must be at least 6 characters long.';
    }
    //check for uppercase letter

    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter.';
    }

    //check for special characters

    if (!value.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))){
      return 'Password must contain at least one special character.';
    }
    return null;
  }

  // Check for confirm password

  static String? validateConfirmPassword(String? value, String? password) {
    if (value == null || value.isEmpty) {
      return 'Confirm Password is required.';
    }
    if (value != password) {
      return 'Passwords do not match.';
    }
    return null;
  }

  static String? validatePhoneNumber(String? value) {
    if (value == null || value.isEmpty){
      return 'Phone Number is required.';
    }

    //check regular expression for phone number validation (assuming a 11-digits Pak phone number format

    final phoneRegExp = RegExp(r'^\d{11}$');

    if (!phoneRegExp.hasMatch(value)) {
      return 'Invalid Phone Number format (11 digits required).';
    }

    return null;
    }

    //added more customs validators as needed for your specific requirements.

  }