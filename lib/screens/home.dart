import 'package:flutter/material.dart';
import 'package:flutterminimini/screens/api_test.dart';
import 'package:flutterminimini/screens/api_test_v2.dart';
import 'package:flutterminimini/screens/barcelona.dart';
import 'package:flutterminimini/screens/calendar.dart';
import 'package:flutterminimini/screens/map.dart';
import 'package:flutterminimini/screens/todo.dart';
import 'numbering.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Main")),
      body: mainScreenContent(context),
    );
  }
}

Widget mainScreenContent(BuildContext context) {
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
      const SizedBox(
        height: 50,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          litteBox("Numbering", context, NumberingScreen()),
          litteBox("Map", context, MapScreen()),
          litteBox("Provider\n(TODO)", context, TodoScreen()),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          litteBox("Api test", context, ApiTestScreen()),
          litteBox("Calendar", context, PlanScreen()),
          litteBox("FC\nBarcelona", context, BarcelonaScreen()),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          litteBox("Api test v2", context, ApiTestV2()),
          litteBox("", context, PlanScreen()),
          litteBox("", context, BarcelonaScreen()),
        ],
      ),
      const SizedBox(
        height: 20,
      ),
    ],
  );
}

Widget litteBox(String innerText, BuildContext context, Widget screen) {
  return GestureDetector(
    onTap: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => screen));
    },
    child: Container(
      height: 80,
      width: 100,
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.deepOrange),
          color: Colors.deepOrange),
      child: Center(
        child: Text(
          innerText,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: "palatino",
              fontWeight: FontWeight.w700),
        ),
      ),
    ),
  );
}
