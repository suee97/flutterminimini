import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Main")),
      body: mainScreenContent(),
    );
  }
}

Widget mainScreenContent() {
  return Column(
    children: [
      Container(
        height: 200,
        margin: const EdgeInsets.all(12.0),
        decoration:
            BoxDecoration(border: Border.all(width: 2, color: Colors.black)),
        alignment: Alignment.center,
        child: const Text(
          "ST'art App",
          style: TextStyle(
              fontFamily: "palatino",
              fontSize: 48,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
      ),
      SizedBox(height: 80,),
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            litteBox("tee"),
            litteBox("tee"),
            litteBox("tee"),
          ],
        ),
      ),
      SizedBox(height: 20,),
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            litteBox("tee"),
            litteBox("tee"),
            litteBox("FC\nBarcelona"),
          ],
        ),
      )
    ],
  );
}

Widget litteBox(String innerText) {
  return Container(
    height: 80,
    width: 100,
    decoration:
        BoxDecoration(border: Border.all(width: 2, color: Colors.deepOrange)),
    child: Center(
      child: Text(
          innerText,
        style: const TextStyle(
          fontSize: 20
        ),
      ),
    ),
  );
}
