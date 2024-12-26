import 'package:formz/formz.dart';
import 'package:personal_portfolio/core/utils/form_utils/fields_validator_methods.dart';

enum PhoneNumberValidationError { invalid, empty }

class PhoneNumberInput extends FormzInput<String, PhoneNumberValidationError> {
  const PhoneNumberInput.pure() : super.pure('');

  const PhoneNumberInput.dirty([super.value = '']) : super.dirty();

  @override
  PhoneNumberValidationError? validator(final String? value) {
    return value!.isNotEmpty == true
        ? FieldsValidatorMethods().validatePhoneNumber(value)
            ? null
            : PhoneNumberValidationError.invalid
        : PhoneNumberValidationError.empty;
  }
}