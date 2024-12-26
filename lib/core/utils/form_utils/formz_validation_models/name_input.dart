import 'package:formz/formz.dart';

enum NameValidationError { invalid, empty }

class NameInput extends FormzInput<String, NameValidationError> {
  const NameInput.pure() : super.pure('');

  const NameInput.dirty([super.value = '']) : super.dirty();

  @override
  NameValidationError? validator(final String? value) {
    return value!.isNotEmpty ? null : NameValidationError.empty;
  }
}
