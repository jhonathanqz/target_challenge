import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

import 'package:target_challenge/shared/helpers/snack_helper.dart';
import 'package:target_challenge/shared/style/style_theme.dart';

import '../mobx/login_store.dart';

class LoginController {
  final LoginStore _store;

  LoginController({required LoginStore loginStore}) : _store = loginStore;

  bool get isLoading => _store.isLoading;
  String get userField => _store.userField;
  String get passwordField => _store.passwordField;
  String? get userError => _store.userValid;
  String? get passwordError => _store.passwordValid;

  bool _checkFiels() => _store.checkFiels();

  LoginStore get store => _store;

  void setUserField(String value) => _store.setUserField(value);
  void setPasswordField(String value) => _store.setPasswordField(value);

  Future<void> login(BuildContext context) async {
    if (_checkFiels()) {
      return _store.login();
    }
    SnackHelper.showSnackInformation(
        'Login ou senha inválido, por favor revise!',
        Style.theme.redColor,
        context);
  }

  void privacyPolicy() {
    final Uri google = Uri(
      scheme: 'https',
      path: 'google.com.br',
    );

    launchUrl(google);
  }
}
