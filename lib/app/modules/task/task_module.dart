import 'package:flutter_modular/flutter_modular.dart';

import 'package:target_challenge/app/modules/task/presentation/controller/task_controller.dart';
import 'package:target_challenge/app/modules/task/presentation/pages/task_page.dart';

import 'presentation/mobx/task_store.dart';

class TaskModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton(
        (i) => TaskStore(navigatorService: i(), sharedLocalService: i())),
    Bind.factory((i) => TaskController(store: i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/',
        child: (_, args) => TaskPage(
              controller: Modular.get(),
            )),
  ];
}
