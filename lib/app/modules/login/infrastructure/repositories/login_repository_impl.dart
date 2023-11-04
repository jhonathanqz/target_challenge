import 'package:target_challenge/app/modules/login/domain/entities/login.dart';
import 'package:target_challenge/app/modules/login/domain/repositories/login_repository.dart';

import '../contract/login_provider.dart';

class LoginRepositoryImpl implements LoginRepository {
  final LoginProvider _loginProvider;

  LoginRepositoryImpl({
    required LoginProvider loginRepositoryImpl,
  }) : _loginProvider = loginRepositoryImpl;

  @override
  Future<User> login(String email, String password) async {
    try {
      final response = await _loginProvider.login(email, password);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
