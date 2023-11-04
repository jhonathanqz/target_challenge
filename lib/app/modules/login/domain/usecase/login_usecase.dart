import 'package:target_challenge/app/modules/login/domain/entities/login.dart';

import '../repositories/login_repository.dart';

class LoginUsecase {
  final LoginRepository _repository;

  LoginUsecase({required LoginRepository repository})
      : _repository = repository;

  Future<User> call(String email, String password) async {
    try {
      return await _repository.login(email, password);
    } catch (e) {
      rethrow;
    }
  }
}
