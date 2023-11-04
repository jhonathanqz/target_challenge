import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

import 'package:target_challenge/app/core/client/client.dart';
import 'package:target_challenge/app/core/client/client_http.dart';
import 'package:target_challenge/app/core/client/i_client.dart';
import 'package:target_challenge/app/core/domain/services/shared_local_service.dart';
import 'package:target_challenge/app/core/presentation/navigation/navigator_service.dart';

import 'app.dart';
import 'modules/login/login_module.dart';
import 'modules/splash/splash_module.dart';
import 'modules/task/task_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [];

  @override
  List<Bind> get binds => [
        Bind.singleton((i) => NavigatorService()),
        Bind.singleton<IClient>(
            (i) => Client(client: ClientHTTP.setupClient())),
        Bind.singleton((i) => SharedLocalService()),
      ];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute('/splash', module: SplashModule()),
        ModuleRoute('/login', module: LoginModule()),
        ModuleRoute('/task', module: TaskModule()),
      ];

  @override
  // ignore: override_on_non_overriding_member
  Widget get bootstrap => const App();
}
