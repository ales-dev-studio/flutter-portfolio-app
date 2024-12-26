import 'package:formz/formz.dart';
import 'package:personal_portfolio/core/utils/form_utils/fields_validator_methods.dart';

enum NationalCodeValidationError { invalid, empty }

class NationalCodeInput
    extends FormzInput<String, NationalCodeValidationError> {
  const NationalCodeInput.pure() : super.pure('');

  const NationalCodeInput.dirty([super.value = '']) : super.dirty();

  @override
  NationalCodeValidationError? validator(final String? value) {
    return value!.isNotEmpty
        ? FieldsValidatorMethods().validateIranianNationalCode(value)
            ? null
            : NationalCodeValidationError.invalid
        : NationalCodeValidationError.empty;
  }
}
