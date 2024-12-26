import 'package:formz/formz.dart';
import 'package:personal_portfolio/core/utils/app_snack_bar.dart';

/// Validate and show related messages
bool generalFormzValidator({
  /// List of formz inputs
  required final List<FormzInput> formzInputList,

  /// List of formz input's errors text
  required final List<String?> formzInputErrorText,
}) {
  /// Due to the navigation of both lists with a for loop
  /// the number of elements of the lists must be equal
  if (formzInputList.length != formzInputErrorText.length) {
    return false;
  }

  bool result = true;
  try {
    for (final FormzInput input in formzInputList) {
      if (input.isNotValid) {
        result = false;
        final int index = formzInputList.indexOf(input);
        showSnackBar(formzInputErrorText[index]);
        break;
      }
    }
  } catch (e) {
    return false;
  }
  return result;
}
