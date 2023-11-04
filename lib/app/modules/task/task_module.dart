import 'package:flutter_modular/flutter_modular.dart';

import 'package:target_challenge/app/modules/task/task_page.dart';
import 'package:target_challenge/app/modules/task/task_store.dart';

class TaskModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => TaskStore(navigatorService: i())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => TaskPage()),
  ];
}
