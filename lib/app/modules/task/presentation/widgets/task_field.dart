import 'package:flutter/material.dart';

import 'package:mobx/mobx.dart';

import 'package:target_challenge/shared/widgets/textfield/simple_textfield.dart';

import '../controller/task_controller.dart';

class TaskField extends StatefulWidget {
  final TaskController controller;

  const TaskField({
    super.key,
    required this.controller,
  });

  @override
  State<TaskField> createState() => _TaskFieldState();
}

class _TaskFieldState extends State<TaskField> {
  final fieldController = TextEditingController();
  final focus = FocusNode();
  late ReactionDisposer _editFieldDisposer;

  @override
  void initState() {
    _editFieldDisposer = reaction(
      (_) => widget.controller.isEditField,
      (_) {
        if (widget.controller.isEditField) {
          widget.controller.setEditField(false);
          fieldController.text = widget.controller.field;
          focus.requestFocus();
        }
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    fieldController.dispose();
    _editFieldDisposer.call();
    focus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Focus(
            onFocusChange: (hasFocus) {
              if (!hasFocus) {
                focus.requestFocus();
              }
            },
            child: SimpleTextField(
              focusNode: focus,
              autofocus: true,
              textEditingController: fieldController,
              onChanged: widget.controller.setField,
              labelText: 'Digite seu texto',
              hintText: '',
              textInputType: TextInputType.text,
              onSubmitted: (_) {
                widget.controller.addTask(fieldController.text);
                fieldController.clear();
              },
            ),
          ),
        ],
      ),
    );
  }
}
