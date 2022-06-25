import 'package:flutter/material.dart';
import 'package:flutterminimini/recipe.dart';
import 'package:flutterminimini/recipe_detail.dart';

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
    Recipe("num1", 'assets/messi1.png'),
    Recipe("num2", "assets/messi1.png"),
    Recipe("num3", "assets/messi1.png"),
    Recipe("num4", "assets/messi1.png"),
    Recipe("num5", "assets/messi1.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Barcelona")),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return RecipeDetail(recipe: recipes[index],);
                  }));
                },
                child: buildRecipeCard(recipes[index]));
          },
          itemCount: recipes.length,
        ));
  }
}

Widget buildRecipeCard(Recipe recipe) {
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
                recipe.label!,
              )
            ],
          )));
}
