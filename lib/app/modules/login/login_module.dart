import 'package:flutter_modular/flutter_modular.dart';

import 'package:target_challenge/app/modules/login/login_binds.dart';

import 'presentation/pages/login_page.dart';

class LoginModule extends Module {
  @override
  final List<Bind> binds = [
    ...LoginBinds.provider(),
    ...LoginBinds.repositories(),
    ...LoginBinds.usecase(),
    ...LoginBinds.store(),
    ...LoginBinds.controller(),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/',
        child: (_, args) => LoginPage(
              controller: Modular.get(),
            )),
  ];
}
