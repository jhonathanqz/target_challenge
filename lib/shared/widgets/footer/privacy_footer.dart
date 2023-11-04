import 'package:flutter/material.dart';

import 'package:target_challenge/shared/style/style_theme.dart';

class PrivacyFooter extends StatelessWidget {
  final Function() onTap;

  const PrivacyFooter({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Style.edgeInsets.bxl,
      child: Center(
        child: InkWell(
          onTap: onTap,
          child: Text(
            'Política de privacidade',
            style: Style.fieldStyle.simpleStyle,
          ),
        ),
      ),
    );
  }
}
