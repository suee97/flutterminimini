import 'package:flutter/material.dart';

class NumberingScreen extends StatefulWidget {
  const NumberingScreen({Key? key}) : super(key: key);

  @override
  _NumberingScreenState createState() {
    return _NumberingScreenState();
  }

}

class _NumberingScreenState extends State<NumberingScreen> {

  int a = 999;

  @override
  Widget build(BuildContext context) {
    return Text('$a');
  }

}