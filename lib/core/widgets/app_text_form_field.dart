import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:personal_portfolio/core/theme/dimens.dart';

import 'package:personal_portfolio/core/utils/check_theme_status.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    super.key,
    this.validator,
    this.controller,
    this.initialValue,
    this.labelText,
    this.errorText,
    this.focusNode,
    this.onChanged,
    this.onFieldSubmitted,
    this.textInputType,
    this.maxLine,
    this.isMaxLineNull = false,
    this.obSecure,
    this.maxLength,
    this.hinText,
    this.textInputAction,
    this.textStyle,
    this.textDirection,
    this.inputFormatters,
    this.autoValidate = false,
    this.displayErrorState = true,
    this.onTap,
    this.suffixText,
    this.prefixText,
    this.centerText = false,
    this.prefixIcon,
    this.suffixIcon,
    this.autoFocus = false,
    this.isDark,
    this.hintStyle,
    this.displayCounterText = false,
    this.showBorder = true,
    this.enabled,
  });

  final TextEditingController? controller;
  final FocusNode? focusNode;
  final String? initialValue;
  final String? labelText;
  final String? errorText;
  final GestureTapCallback? onTap;
  final FormFieldValidator<String>? validator;
  final ValueChanged<String>? onFieldSubmitted;
  final ValueChanged<String>? onChanged;
  final TextInputType? textInputType;
  final int? maxLine;
  final bool isMaxLineNull;
  final bool? obSecure;
  final int? maxLength;
  final String? hinText;
  final TextStyle? textStyle;
  final TextStyle? hintStyle;
  final List<TextInputFormatter>? inputFormatters;
  final TextInputAction? textInputAction;
  final bool displayErrorState;
  final bool autoValidate;
  final String? suffixText;
  final String? prefixText;
  final TextDirection? textDirection;
  final bool centerText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool autoFocus;
  final bool? isDark;
  final bool displayCounterText;
  final bool showBorder;
  final bool? enabled;

  @override
  Widget build(final BuildContext context) {
    final Color color = (isDark == null ? checkDarkMode(context) : isDark!)
        ? Colors.white
        : Colors.black87;
    return TextFormField(
      initialValue: initialValue,
      enabled: enabled ?? true,
      textAlign: centerText ? TextAlign.center : TextAlign.start,
      textDirection: textDirection,
      validator: validator,
      controller: controller,
      focusNode: focusNode,
      onChanged: onChanged,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      onFieldSubmitted: onFieldSubmitted,
      onTap: onTap,
      inputFormatters: inputFormatters,
      keyboardType: textInputType,
      autocorrect: false,
      autofocus: autoFocus,
      maxLength: maxLength,
      obscureText: obSecure ?? false,
      maxLines: isMaxLineNull ? null : (maxLine ?? 1),
      textInputAction: textInputAction,
      decoration: InputDecoration(
        counterText: displayCounterText ? null : '',
        hintText: hinText,
        hintTextDirection: textDirection,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        labelText: labelText,
        errorText: errorText,
        errorStyle: TextStyle(fontSize: displayErrorState ? 13 : 0.0),
        labelStyle: TextStyle(color: color, fontSize: 15),
        prefix: prefixText != null
            ? Text(
                prefixText!,
                style: TextStyle(
                  color: showBorder ? color : Colors.transparent,
                  height: 1.5,
                ),
              )
            : null,
        suffix: suffixText != null
            ? Padding(
              padding: const EdgeInsets.symmetric(horizontal: Dimens.padding),
              child: Text(
                  suffixText!,
                  style: TextStyle(
                    color: showBorder ? color : Colors.transparent,
                  ),
                ),
            )
            : null,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: showBorder ? color : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(Dimens.corners),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: showBorder ? Colors.grey.shade300 : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(Dimens.corners),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: showBorder ? Colors.red : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(Dimens.corners),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: showBorder ? Colors.red : Colors.transparent,
          ),
          borderRadius: BorderRadius.circular(Dimens.corners),
        ),
      ),
    );
  }
}
