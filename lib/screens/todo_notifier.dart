import 'package:flutter/material.dart';

class TodoNotifier extends ChangeNotifier {

  final List<String> _todoList = ["eat", "sleep", "coding"];

  void insertTodo(String newTodo) {
    _todoList.add(newTodo);
    notifyListeners();
  }

  List<String> getTodo() {
    return _todoList;
  }
}