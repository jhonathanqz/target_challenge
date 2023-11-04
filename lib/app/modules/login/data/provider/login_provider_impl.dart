import 'package:target_challenge/app/core/client/i_client.dart';
import 'package:target_challenge/app/modules/login/infrastructure/contract/login_provider.dart';

import '../dto/login_dto.dart';

class LoginProviderImpl implements LoginProvider {
  final IClient _client;

  LoginProviderImpl({required IClient client}) : _client = client;

  @override
  Future<LoginDTO> login(String email, String password) async {
    try {
      _client.get('/');
      await Future.delayed(const Duration(seconds: 2));
      return LoginDTO(userName: 'userName-fake', email: email, id: 0);
    } catch (e) {
      rethrow;
    }
  }
}
