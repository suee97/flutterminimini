import 'package:flutter/material.dart';

import '../main.dart';
import '../player.dart';
import '../player_detail.dart';

class BarcelonaScreen extends StatelessWidget {
  BarcelonaScreen({Key? key}) : super(key: key);

  List<Player> players = [
    Player("messi", 'assets/messi1.png', Info(35, 5.0)),
    Player("xavi", "assets/xavi1.jpeg", Info(40, 4.8)),
    Player("iniesta", "assets/iniesta1.jpeg", Info(37, 4.9)),
    Player("busquets", "assets/busquets1.jpeg", Info(35, 4.5)),
    Player("pique", "assets/pique1.jpeg", Info(34, 4.2)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Experiment")),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return PlayerDetail(player: players[index],);
                  }));
                },
                child: playerCard(players[index]));
          },
          itemCount: players.length,
        ));
  }
}