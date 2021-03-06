import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiTestNotifier extends ChangeNotifier {
  String _apiTitle = "";

  String getApiRes() {
    return _apiTitle;
  }

  Future<void> fetch() async {
    var url = 'https://jsonplaceholder.typicode.com/posts/1';
    var res = await http.get(Uri.parse(url));
    Map<String, dynamic> data = jsonDecode(res.body);
    _apiTitle = data['title'];
    notifyListeners();
  }

  void clear() {
    _apiTitle = "";
    notifyListeners();
  }
}
