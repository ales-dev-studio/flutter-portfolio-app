import 'package:persian_number_utility/persian_number_utility.dart';
import 'package:persian_tools/persian_tools.dart';

class FieldsValidatorMethods {
  bool validatePhoneNumber(final String? phoneNumber) {
    try {
      if (phoneNumber == null) {
        return false;
      }
      return phoneNumber.isValidIranianMobileNumber();
    } catch (e) {
      return false;
    }
  }

  bool validateIranianNationalCode(final String? nationalCode) {
    try {
      if (nationalCode == null) {
        return false;
      }
      return nationalCode.isValidIranianNationalCode();
    } catch (e) {
      return false;
    }
  }

  bool validateBankCardNumber(final String? cardNumber) {
    try {
      if (cardNumber == null) {
        return false;
      }
      return cardNumber.isValidBankCardNumber();
    } catch (e) {
      return false;
    }
  }

  bool validateEmail(final String? email) {
    try {
      if (email == null) {
        return false;
      }
      return RegExp(
        r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$',
      ).hasMatch(email);
    } catch (e) {
      return false;
    }
  }

  bool validateShebaNumber(final String? shebaNumber) {
    try {
      if (shebaNumber == null) {
        return false;
      }
      final Sheba sheba = Sheba('IR$shebaNumber');
      return sheba.isValid;
    } catch (e) {
      return false;
    }
  }
}
