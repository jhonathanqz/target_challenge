import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';

import 'package:target_challenge/shared/style/style_theme.dart';
import 'package:target_challenge/shared/widgets/footer/privacy_footer.dart';

import '../../../../../shared/widgets/scaffold/scaffold_primary.dart';
import '../controller/login_controller.dart';

import 'widgets/login_form.dart';

class LoginPage extends StatefulWidget {
  final LoginController controller;

  const LoginPage({
    Key? key,
    required this.controller,
  }) : super(key: key);
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final userController = TextEditingController();
  final passwordController = TextEditingController();
  late LoginController _controller;

  @override
  void initState() {
    _controller = widget.controller;
    super.initState();
  }

  @override
  void dispose() {
    userController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Observer(builder: (context) {
      return ScaffoldPrimary(
        isLoading: _controller.isLoading,
        footer: PrivacyFooter(
          onTap: () => _controller.privacyPolicy(),
        ),
        child: Container(
          height: size.height,
          width: double.infinity,
          padding: Style.edgeInsets.hxl,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LoginForm(
                controller: _controller,
              ),
            ],
          ),
        ),
      );
    });
  }
}
