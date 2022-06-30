import 'package:flutter/material.dart';

class NumberingScreen extends StatefulWidget {
  const NumberingScreen({Key? key}) : super(key: key);

  @override
  State<NumberingScreen> createState() => _NumberingScreenState();
}

class _NumberingScreenState extends State<NumberingScreen> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Numbering"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(
              '$count',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
            ),
            GestureDetector(
              onTap: countInc,
              child: Text(
                "Click",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    backgroundColor: Colors.amber
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void countInc() {
    setState(() {
      this.count++;
    });
  }
}
