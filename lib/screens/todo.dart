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
        return ListView.builder(
            itemCount: temp.length,
            itemBuilder: (BuildContext context, int index) {
              return TodoTile(content: temp[index]);
            }
        );
      },
    );
  }
}

class TodoTile extends StatelessWidget {
  const TodoTile({Key? key, required this.content}) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        title: Text(content)
      ),
    );
  }
}
