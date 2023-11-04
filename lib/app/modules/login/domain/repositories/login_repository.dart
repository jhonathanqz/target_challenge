import 'package:target_challenge/app/modules/login/domain/entities/login.dart';

abstract class LoginRepository {
  Future<User> login(String email, String password);
}
