import 'package:flutter/material.dart';
import 'package:flutterminimini/screens/todo_notifier.dart';
import 'package:provider/provider.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TodoNotifier>(
      builder: (context, todoNotifier, child) {
        final temp = todoNotifier.getTodo();
        return Text(temp[0]);
      },
    );
  }
}
