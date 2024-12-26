import 'package:personal_portfolio/core/utils/form_utils/formz_validation_models/email_input.dart';
import 'package:personal_portfolio/core/utils/form_utils/formz_validation_models/last_name_input.dart';
import 'package:personal_portfolio/core/utils/form_utils/formz_validation_models/name_input.dart';
import 'package:personal_portfolio/core/utils/form_utils/formz_validation_models/national_code_input.dart';
import 'package:personal_portfolio/core/utils/form_utils/formz_validation_models/phone_number_input.dart';
import 'package:personal_portfolio/core/utils/form_utils/formz_validation_models/sheba_number_input.dart';

/// TODO ali: translate all errors

extension EmailErrorText on EmailValidationError {
  String errorText() {
    switch (this) {
      case EmailValidationError.invalid:
        return 'Please ensure the email is valid';
      case EmailValidationError.empty:
        return 'Please enter email';
    }
  }
}

extension NameErrorText on NameValidationError {
  String errorText() {
    switch (this) {
      case NameValidationError.invalid:
        return 'Please ensure the name length less than 50 character';
      case NameValidationError.empty:
        return 'Please enter name';
    }
  }
}

extension LatsNameErrorText on LastNameValidationError {
  String errorText() {
    switch (this) {
      case LastNameValidationError.invalid:
        return 'Please ensure the name length less than 50 character';
      case LastNameValidationError.empty:
        return 'Please enter last name';
    }
  }
}

extension NationalCodeErrorText on NationalCodeValidationError {
  String errorText() {
    switch (this) {
      case NationalCodeValidationError.invalid:
        return 'Please ensure the national code is valid';
      case NationalCodeValidationError.empty:
        return 'Please enter national code';
    }
  }
}

extension PhoneNumberErrorText on PhoneNumberValidationError {
  String errorText() {
    switch (this) {
      case PhoneNumberValidationError.invalid:
        return 'Please ensure the mobile number is valid';
      case PhoneNumberValidationError.empty:
        return 'Please enter mobile number';
    }
  }
}

extension ShebaNumberErrorText on ShebaNumberValidationError {
  String errorText() {
    switch (this) {
      case ShebaNumberValidationError.invalid:
        return 'Please ensure the sheba number is valid';
      case ShebaNumberValidationError.empty:
        return 'Please enter sheba number';
    }
  }
}

