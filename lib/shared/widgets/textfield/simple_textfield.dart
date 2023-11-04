import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../style/style_theme.dart';

class SimpleTextField extends StatelessWidget {
  const SimpleTextField({
    Key? key,
    required this.textEditingController,
    required this.onChanged,
    required this.labelText,
    required this.hintText,
    required this.textInputType,
    this.focusNode,
    required this.onSubmitted,
    this.errorText,
    this.autofocus = false,
    this.obscureText = false,
    this.maxLines = 1,
    this.maxLenght,
    this.inputFormatters,
    this.enabled = true,
    this.suffixIcon,
    this.prefixIcon,
  }) : super(key: key);
  final TextEditingController textEditingController;
  final String labelText;
  final String hintText;
  final Function(String) onChanged;
  final TextInputType textInputType;
  final bool obscureText;
  final Function(String) onSubmitted;
  final FocusNode? focusNode;
  final bool? autofocus;
  final String? errorText;
  final int maxLines;
  final int? maxLenght;
  final List<TextInputFormatter>? inputFormatters;
  final bool enabled;
  final Widget? prefixIcon;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      keyboardType: textInputType,
      obscureText: obscureText,
      autofocus: autofocus!,
      enabled: enabled,
      maxLines: maxLines,
      maxLength: maxLenght,
      inputFormatters: inputFormatters,
      focusNode: focusNode,
      onFieldSubmitted: onSubmitted,
      onChanged: onChanged,
      decoration: InputDecoration(
        errorText: errorText,
        labelText: labelText,
        labelStyle: Style.fieldStyle.labelStyle,
        hintText: hintText,
        border: Style.inputBorder.focusedInputBorder,
        focusedBorder: Style.inputBorder.focusedInputBorder,
        filled: true,
        fillColor: Colors.white,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
      ),
    );
  }
}
