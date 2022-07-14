import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiTestV2 extends StatelessWidget {
  const ApiTestV2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Future<String> fetch() async {
      try {
        var tempString = await http
            .get(Uri.parse('https://jsonplaceholder.typicode.com/posts/3'));
        await Future.delayed(const Duration(milliseconds: 1000));
        Map<String, dynamic> tempData = jsonDecode(tempString.body);
        return tempData['body'];
      } catch (e) {
        return e.toString();
      }
    }

    return FutureBuilder<String>(
        future: fetch(),
        builder: (context, AsyncSnapshot<String> snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
              body: Center(child: Text(snapshot.data!)),
            );
          } else if (snapshot.hasError) {
            return const Scaffold(
              body: Center(child: Text("에러발생")),
            );
          } else {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }
        });
  }
}
