// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$TaskStore on TaskStoreBase, Store {
  late final _$isLoadingAtom =
      Atom(name: 'TaskStoreBase.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$fieldAtom = Atom(name: 'TaskStoreBase.field', context: context);

  @override
  String get field {
    _$fieldAtom.reportRead();
    return super.field;
  }

  @override
  set field(String value) {
    _$fieldAtom.reportWrite(value, super.field, () {
      super.field = value;
    });
  }

  late final _$isEditFieldAtom =
      Atom(name: 'TaskStoreBase.isEditField', context: context);

  @override
  bool get isEditField {
    _$isEditFieldAtom.reportRead();
    return super.isEditField;
  }

  @override
  set isEditField(bool value) {
    _$isEditFieldAtom.reportWrite(value, super.isEditField, () {
      super.isEditField = value;
    });
  }

  late final _$tasksAtom = Atom(name: 'TaskStoreBase.tasks', context: context);

  @override
  List<String> get tasks {
    _$tasksAtom.reportRead();
    return super.tasks;
  }

  @override
  set tasks(List<String> value) {
    _$tasksAtom.reportWrite(value, super.tasks, () {
      super.tasks = value;
    });
  }

  late final _$getTasksAsyncAction =
      AsyncAction('TaskStoreBase.getTasks', context: context);

  @override
  Future<void> getTasks() {
    return _$getTasksAsyncAction.run(() => super.getTasks());
  }

  late final _$addTaskAsyncAction =
      AsyncAction('TaskStoreBase.addTask', context: context);

  @override
  Future<void> addTask(String value) {
    return _$addTaskAsyncAction.run(() => super.addTask(value));
  }

  late final _$deleteTaskAsyncAction =
      AsyncAction('TaskStoreBase.deleteTask', context: context);

  @override
  Future<void> deleteTask(String value) {
    return _$deleteTaskAsyncAction.run(() => super.deleteTask(value));
  }

  late final _$TaskStoreBaseActionController =
      ActionController(name: 'TaskStoreBase', context: context);

  @override
  void setField(String value) {
    final _$actionInfo = _$TaskStoreBaseActionController.startAction(
        name: 'TaskStoreBase.setField');
    try {
      return super.setField(value);
    } finally {
      _$TaskStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEditField(bool value) {
    final _$actionInfo = _$TaskStoreBaseActionController.startAction(
        name: 'TaskStoreBase.setEditField');
    try {
      return super.setEditField(value);
    } finally {
      _$TaskStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
field: ${field},
isEditField: ${isEditField},
tasks: ${tasks}
    ''';
  }
}
