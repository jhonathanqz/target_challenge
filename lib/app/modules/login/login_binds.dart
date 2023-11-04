import 'package:flutter_modular/flutter_modular.dart';

import 'package:target_challenge/app/modules/login/data/provider/login_provider_impl.dart';
import 'package:target_challenge/app/modules/login/domain/repositories/login_repository.dart';
import 'package:target_challenge/app/modules/login/domain/usecase/login_usecase.dart';
import 'package:target_challenge/app/modules/login/infrastructure/contract/login_provider.dart';
import 'package:target_challenge/app/modules/login/infrastructure/repositories/login_repository_impl.dart';
import 'package:target_challenge/app/modules/login/presentation/controller/login_controller.dart';
import 'package:target_challenge/app/modules/login/presentation/mobx/login_store.dart';

abstract class LoginBinds {
  static List<Bind> provider() {
    return [
      Bind.factory<LoginProvider>((i) => LoginProviderImpl(client: i())),
    ];
  }

  static List<Bind> repositories() {
    return [
      Bind.factory<LoginRepository>(
          (i) => LoginRepositoryImpl(loginRepositoryImpl: i())),
    ];
  }

  static List<Bind> usecase() {
    return [
      Bind.factory((i) => LoginUsecase(repository: i())),
    ];
  }

  static List<Bind> store() {
    return [
      Bind.lazySingleton(
          (i) => LoginStore(navigatorService: i(), loginUsecase: i())),
    ];
  }

  static List<Bind> controller() {
    return [
      Bind.factory((i) => LoginController(loginStore: i())),
    ];
  }
}
