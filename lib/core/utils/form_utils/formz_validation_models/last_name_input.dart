import 'package:formz/formz.dart';

enum LastNameValidationError { invalid, empty }

class LastNameInput extends FormzInput<String, LastNameValidationError> {
  const LastNameInput.pure() : super.pure('');

  const LastNameInput.dirty([super.value = '']) : super.dirty();

  @override
  LastNameValidationError? validator(final String? value) {
    return value!.isNotEmpty ? null : LastNameValidationError.empty;
  }
}