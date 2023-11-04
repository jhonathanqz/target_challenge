import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

import 'package:target_challenge/app/modules/task/task_store.dart';
import 'package:target_challenge/shared/widgets/scaffold/scaffold_primary.dart';

class TaskPage extends StatefulWidget {
  final String title;
  const TaskPage({Key? key, this.title = 'TaskPage'}) : super(key: key);
  @override
  TaskPageState createState() => TaskPageState();
}

class TaskPageState extends State<TaskPage> {
  final TaskStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return ScaffoldPrimary(child: Container());
  }
}
