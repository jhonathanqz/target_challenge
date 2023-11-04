import 'package:mobx/mobx.dart';

import 'package:target_challenge/app/core/presentation/navigation/navigator_service.dart';

import '../../../../core/domain/services/shared_local_service.dart';

part 'task_store.g.dart';

class TaskStore = TaskStoreBase with _$TaskStore;

abstract class TaskStoreBase with Store {
  final NavigatorService _navigatorService;
  final SharedLocalService _sharedLocalService;

  TaskStoreBase({
    required NavigatorService navigatorService,
    required SharedLocalService sharedLocalService,
  })  : _navigatorService = navigatorService,
        _sharedLocalService = sharedLocalService;

  @observable
  bool isLoading = false;

  @observable
  String field = '';

  @action
  void setField(String value) => field = value;

  @observable
  bool isEditField = false;

  @action
  void setEditField(bool value) => isEditField = value;

  @observable
  List<String> tasks = [];

  @action
  Future<void> getTasks() async {
    try {
      isLoading = true;
      tasks = [];
      final response = await _sharedLocalService.getStringList('tasks');
      tasks.addAll(response);
    } catch (e) {
      print('***Erro get: $e');
    }
    isLoading = false;
  }

  @action
  Future<void> addTask(String value) async {
    try {
      isLoading = true;
      tasks.add(value);
      await _sharedLocalService.saveStringList('tasks', tasks);
      await getTasks();
    } catch (e) {
      tasks.remove(value);
      print('***Erro add: $e');
    }
    isLoading = false;
  }

  @action
  Future<void> deleteTask(String value) async {
    try {
      isLoading = true;
      tasks.remove(value);
      await _sharedLocalService.saveStringList('tasks', tasks);
      await getTasks();
    } catch (e) {
      tasks.add(value);
      print('**Erro delete: $e');
    }
    isLoading = false;
  }
}
