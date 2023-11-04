import 'package:flutter/material.dart';

import 'package:target_challenge/app/modules/task/presentation/controller/task_controller.dart';
import 'package:target_challenge/shared/style/style_theme.dart';

class TasksListCard extends StatelessWidget {
  final TaskController controller;
  const TasksListCard({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Style.edgeInsets.t40,
      color: Style.theme.white,
      child: ListView.separated(
        itemBuilder: (context, index) {
          final task = controller.tasks[index];
          return Container(
            padding: Style.edgeInsets.hsd,
            child: Row(children: [
              Expanded(
                child: Text(task),
              ),
              IconButton(
                onPressed: () {
                  controller.setField(task);
                  controller.setEditField(true);
                },
                icon: const Icon(Icons.edit),
              ),
              IconButton(
                onPressed: () => controller.deleteTask(task),
                icon: Icon(
                  Icons.cancel,
                  color: Style.theme.redColor,
                ),
              ),
            ]),
          );
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: controller.tasks.length,
      ),
    );
  }
}
