import 'package:flutter/material.dart';

import '../../style/style_theme.dart';

class ButtonPrimary extends StatelessWidget {
  final Function() onTap;
  final String text;
  final EdgeInsets? edgeInsets;
  final Color? color;
  const ButtonPrimary({
    super.key,
    required this.onTap,
    required this.text,
    this.edgeInsets,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? Style.theme.buttonColor,
      ),
      child: Padding(
        padding: edgeInsets ?? EdgeInsets.zero,
        child: Text(
          text,
          style:
              Style.fieldStyle.titleButton.copyWith(color: Style.theme.white),
        ),
      ),
    );
  }
}
