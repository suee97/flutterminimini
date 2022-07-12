import 'package:flutter/material.dart';
import 'package:flutterminimini/notifier/api_test_notifier.dart';
import 'package:flutterminimini/player.dart';
import 'package:flutterminimini/screens/home.dart';
import 'package:flutterminimini/notifier/todo_notifier.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => TodoNotifier()),
        ChangeNotifierProvider(create: (_) => ApiTestNotifier())
      ],
      child: MaterialApp(
        title: 'Flutter example',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Home(),
      ),
    );
  }
}

Widget playerCard(Player recipe) {
  return Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image(image: AssetImage(recipe.imageUrl)),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                recipe.name,
              )
            ],
          )));
}
