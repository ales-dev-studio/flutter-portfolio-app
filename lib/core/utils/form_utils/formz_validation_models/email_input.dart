import 'package:formz/formz.dart';
import 'package:personal_portfolio/core/utils/form_utils/fields_validator_methods.dart';

enum EmailValidationError { invalid, empty }

class EmailInput extends FormzInput<String, EmailValidationError> {
  const EmailInput.pure() : super.pure('');

  const EmailInput.dirty([super.value = '']) : super.dirty();

  @override
  EmailValidationError? validator(final String? value) {
    return value!.isNotEmpty
        ? FieldsValidatorMethods().validateEmail(value)
            ? null
            : EmailValidationError.invalid
        : EmailValidationError.empty;
  }
}