import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';

import 'package:target_challenge/app/modules/task/presentation/controller/task_controller.dart';
import 'package:target_challenge/app/modules/task/presentation/widgets/tasks_list_card.dart';
import 'package:target_challenge/shared/style/style_theme.dart';
import 'package:target_challenge/shared/widgets/footer/privacy_footer.dart';
import 'package:target_challenge/shared/widgets/scaffold/scaffold_primary.dart';

import '../widgets/task_field.dart';

class TaskPage extends StatefulWidget {
  final TaskController controller;
  const TaskPage({
    Key? key,
    required this.controller,
  }) : super(key: key);
  @override
  TaskPageState createState() => TaskPageState();
}

class TaskPageState extends State<TaskPage> {
  late TaskController _controller;
  late ReactionDisposer _getTasksDisposer;

  @override
  void initState() {
    _controller = widget.controller;

    _getTasksDisposer = autorun(
      (_) async {
        await _controller.getTasks();
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    _getTasksDisposer.call();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Observer(builder: (context) {
      return ScaffoldPrimary(
        isLoading: _controller.isLoading,
        footer: PrivacyFooter(
          onTap: () => _controller.privacyPolicy(),
        ),
        child: Container(
          height: size.height,
          width: double.infinity,
          padding: Style.edgeInsets.sdAll,
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: TasksListCard(
                  controller: _controller,
                ),
              ),
              Expanded(
                child: TaskField(
                  controller: _controller,
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
