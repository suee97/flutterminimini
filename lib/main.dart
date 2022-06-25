import 'package:flutter/material.dart';
import 'package:flutterminimini/recipe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key}) : super(key: key);

  Recipe recipe = Recipe("label", "url");
  List<Recipe> recipes = [
    Recipe("num1", "img1"),
    Recipe("num2", "img2"),
    Recipe("num3", "img3"),
    Recipe("num4", "img4"),
    Recipe("num5", "img5"),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("hello")),
      body: ListView.builder(itemBuilder: (context, index) {
        return Text(recipes[index].label!);
      }, itemCount: recipes.length,)
    );
  }
}
ㅇ