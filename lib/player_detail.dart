import 'package:flutter/material.dart';
import 'package:flutterminimini/player.dart';

class PlayerDetail extends StatelessWidget {
  final Player player;

  const PlayerDetail({Key? key, required this.player}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(player.name)),
      body: Column(
        children: [
          SizedBox(
              width: double.infinity,
              child: Image(image: AssetImage(player.imageUrl))),
          const SizedBox(
            height: 16,
          ),
          Text(
            player.name,
            style: const TextStyle(fontSize: 24, fontFamily: "palatino"),
          )
        ],
      ),
    );
  }
}
