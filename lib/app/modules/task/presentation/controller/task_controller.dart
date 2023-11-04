import 'package:flutter_modular/flutter_modular.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:target_challenge/app/core/domain/services/pop_up_service.dart';
import 'package:target_challenge/app/modules/task/presentation/mobx/task_store.dart';
import 'package:target_challenge/shared/widgets/popup/request/confirmation_popup_request.dart';

class TaskController {
  final TaskStore _store;

  TaskController({
    required TaskStore store,
  }) : _store = store;

  bool get isLoading => _store.isLoading;
  List<String> get tasks => _store.tasks;
  bool get isEditField => _store.isEditField;
  String get field => _store.field;

  void setField(String value) => _store.setField(value);
  void setEditField(bool value) => _store.setEditField(value);

  Future<void> addTask(String value) async => await _store.addTask(value);
  Future<void> getTasks() async => await _store.getTasks();
  Future<void> deleteTask(String value) async {
    PopUpService.showConfirmationDialog(ConfirmationPopupRequest(
      title: 'Atenção!',
      message: 'Confirma exclusão das task: [$value]?',
      cancelText: 'Não',
      confirmText: 'Sim',
      ontap: () async {
        Modular.to.pop();
        await _store.deleteTask(value);
      },
    ));
  }

  void privacyPolicy() {
    final Uri google = Uri(
      scheme: 'https',
      path: 'google.com.br',
    );

    launchUrl(google);
  }
}
