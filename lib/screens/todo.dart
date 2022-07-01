import 'package:flutter/material.dart';
import 'package:flutterminimini/screens/todo_notifier.dart';
import 'package:provider/provider.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TodoNotifier>(builder: (context, todoNotifier, child) {
      final temp = todoNotifier.getTodo();
      return Scaffold(
        appBar: AppBar(
          title: Text("Provider(TODO)"),
        ),
        body: Container(
          color: Colors.grey,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(temp[0]),
            ],
          ),
        ),
      );
    });
  }
}

class TodoTile extends StatelessWidget {
  const TodoTile({
    Key? key,
    required this.content,
  }) : super(key: key);

  final String content;

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        title: Text(content),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.delete_outline),
        ),
      ),
    );
  }
}
