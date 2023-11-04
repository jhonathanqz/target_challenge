import 'package:mobx/mobx.dart';

import 'package:target_challenge/app/modules/login/domain/usecase/login_usecase.dart';

import '../../../../core/presentation/navigation/navigator_service.dart';

part 'login_store.g.dart';

class LoginStore = LoginStoreBase with _$LoginStore;

abstract class LoginStoreBase with Store {
  final NavigatorService _navigatorService;
  final LoginUsecase _loginUsecase;

  LoginStoreBase({
    required NavigatorService navigatorService,
    required LoginUsecase loginUsecase,
  })  : _navigatorService = navigatorService,
        _loginUsecase = loginUsecase;

  @observable
  bool isLoading = false;

  @observable
  String userField = '';

  @observable
  String passwordField = '';

  @action
  void setUserField(String value) => userField = value;

  @action
  void setPasswordField(String value) => passwordField = value;

  @computed
  String? get passwordValid =>
      passwordField.length < 2 && passwordField != '' ? 'Senha inválida' : null;

  @computed
  String? get userValid =>
      userField.length < 2 && userField != '' ? 'Usuário inválido' : null;

  bool checkFiels() {
    if (userField.trim() == '' || passwordField.trim() == '') {
      return false;
    }

    if (passwordField.trim().length < 2 || userField.trim().length < 2) {
      return false;
    }

    return true;
  }

  @action
  Future<void> login() async {
    try {
      isLoading = true;
      final response = await _loginUsecase(userField, passwordField);
      _navigatorService.pushReplacementNamed('/task/');
    } catch (_) {}
    isLoading = false;
  }
}
