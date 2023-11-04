import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:target_challenge/app/modules/login/presentation/controller/login_controller.dart';
import 'package:target_challenge/shared/style/style_theme.dart';
import 'package:target_challenge/shared/widgets/button/button_primary.dart';

import 'login_field.dart';

class LoginForm extends StatefulWidget {
  final LoginController controller;

  const LoginForm({
    super.key,
    required this.controller,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final userController = TextEditingController();
  final passwordController = TextEditingController();
  late LoginController _controller;

  @override
  void initState() {
    _controller = widget.controller;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return Column(
        children: [
          LoginField(
            controller: userController,
            errorText: _controller.userError,
            title: 'Usuário',
            onChanged: _controller.setUserField,
            onSubmitted: (_) {},
            textInputType: TextInputType.emailAddress,
            icon: Icons.person,
          ),
          Style.spacing.md,
          LoginField(
            controller: passwordController,
            errorText: _controller.passwordError,
            title: 'Senha',
            onChanged: _controller.setPasswordField,
            onSubmitted: (_) {},
            textInputType: TextInputType.text,
            icon: Icons.lock,
            inputFormatters: [
              FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9]')),
            ],
          ),
          Style.spacing.xl,
          ButtonPrimary(
            onTap: () => _controller.login(context),
            text: 'Entrar',
            edgeInsets: Style.edgeInsets.hxl,
          ),
        ],
      );
    });
  }
}
