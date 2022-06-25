import 'package:flutter/material.dart';
import 'package:flutterminimini/recipe.dart';

class RecipeDetail extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetail({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.label??"no title")
      ),
      body: Column(
        children: [
          Image(image: AssetImage(recipe.imageUrl!)),
          Text(recipe.label!)
        ],
      ),
    );
  }
}
