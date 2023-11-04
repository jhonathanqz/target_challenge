import 'package:mobx/mobx.dart';

import 'package:target_challenge/app/core/presentation/navigation/navigator_service.dart';

part 'task_store.g.dart';

class TaskStore = TaskStoreBase with _$TaskStore;

abstract class TaskStoreBase with Store {
  final NavigatorService _navigatorService;

  TaskStoreBase({required NavigatorService navigatorService})
      : _navigatorService = navigatorService;

  @observable
  bool isLoading = false;
}
