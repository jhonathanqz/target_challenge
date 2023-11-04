import 'package:flutter_modular/flutter_modular.dart';

import 'package:target_challenge/app/modules/splash/splash_page.dart';
import 'package:target_challenge/app/modules/splash/splash_store.dart';

class SplashModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton(
      (i) => SplashStore(navigatorService: i()),
    ),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/',
        child: (_, args) => SplashPage(
              store: Modular.get(),
            )),
  ];
}
