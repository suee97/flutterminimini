import 'package:flutter/material.dart';
import 'package:flutterminimini/player.dart';
import 'package:flutterminimini/player_detail.dart';

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

  List<Player> players = [
    Player("messi", 'assets/messi1.png'),
    Player("xavi", "assets/xavi1.jpeg"),
    Player("iniesta", "assets/iniesta1.jpeg"),
    Player("busquets", "assets/busquets1.jpeg"),
    Player("pique", "assets/pique1.jpeg"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("FC Barcelona")),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return RecipeDetail(player: players[index],);
                  }));
                },
                child: buildRecipeCard(players[index]));
          },
          itemCount: players.length,
        ));
  }
}

Widget buildRecipeCard(Player recipe) {
  return Card(
      elevation: 3.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Image(image: AssetImage(recipe.imageUrl!)),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                recipe.name!,
              )
            ],
          )));
}
