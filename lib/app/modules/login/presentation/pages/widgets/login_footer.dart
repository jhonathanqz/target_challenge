import 'package:flutter/material.dart';

import 'package:target_challenge/shared/style/style_theme.dart';

class LoginFooter extends StatelessWidget {
  final Function() onTap;

  const LoginFooter({
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
