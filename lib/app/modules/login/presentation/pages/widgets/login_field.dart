import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:target_challenge/shared/style/style_theme.dart';

import '../../../../../../shared/widgets/textfield/simple_textfield.dart';

class LoginField extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final String? errorText;
  final Function(String) onChanged;
  final Function(String) onSubmitted;
  final TextInputType textInputType;
  final IconData icon;
  final List<TextInputFormatter>? inputFormatters;

  const LoginField({
    super.key,
    required this.controller,
    required this.title,
    required this.onChanged,
    required this.onSubmitted,
    required this.textInputType,
    required this.icon,
    this.errorText,
    this.inputFormatters,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: Style.edgeInsets.sdAll,
          child: Text(
            title,
            style: Style.fieldStyle.simpleStyle,
          ),
        ),
        SimpleTextField(
          textEditingController: controller,
          onChanged: onChanged,
          hintText: '',
          labelText: '',
          errorText: errorText,
          textInputType: textInputType,
          onSubmitted: onSubmitted,
          prefixIcon: Icon(icon),
          maxLines: 1,
          maxLenght: 20,
          inputFormatters: inputFormatters,
        )
      ],
    );
  }
}
