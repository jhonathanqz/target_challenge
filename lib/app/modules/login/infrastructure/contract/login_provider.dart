import '../../data/dto/login_dto.dart';

abstract class LoginProvider {
  Future<LoginDTO> login(String email, String password);
}
