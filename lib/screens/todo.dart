import 'package:flutter/material.dart';
import 'package:flutterminimini/notifier/todo_notifier.dart';
import 'package:provider/provider.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<TodoNotifier>(builder: (context, todoNotifier, child) {
      final temp = todoNotifier.getTodo();
      var _controller = TextEditingController();
      return Scaffold(
        appBar: AppBar(
          title: const Text("Provider(TODO)"),
        ),
        body: Column(
          children: [
            Container(
                color: Colors.black,
                height: 400,
                width: double.infinity,
                child: ListView.builder(
                    itemCount: temp.length,
                    itemBuilder: (BuildContext context, int i) {
                      return ListTile(
                        title: Text(
                          temp[i],
                          style: const TextStyle(
                              color: Colors.white, fontSize: 30),
                        ),
                        trailing: IconButton(
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            todoNotifier.deleteTodo(i);
                          },
                        ),
                      );
                    })),
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: "Input todos",
                suffixIcon: IconButton(
                  onPressed: ()=>{
                    todoNotifier.insertTodo(_controller.text),
                    _controller.clear()
                  },
                  icon: Icon(Icons.send),
                )
              ),
            )
          ],
        ),
      );
    });
  }
}
