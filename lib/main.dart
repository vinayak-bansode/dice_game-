import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Dice Game"),
        ),
        body: Dicepage(),
      ),
    ),
  );
}

class Dicepage extends StatefulWidget {
  const Dicepage({super.key});
  @override
  State<Dicepage> createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int rightdice = 1;
  int leftdice = 3;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: IconButton(
              iconSize: 150,
              onPressed: () {
                setState(() {
                  leftdice = Random().nextInt(6) + 1;
                });
              },
              icon: Image.asset('images/dice$leftdice.png'),
            ),
          ),
          Expanded(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  iconSize: 150,
                  onPressed: () {
                    setState(() {
                      rightdice = Random().nextInt(6) + 1;
                    });
                  },
                  icon: Image.asset('images/dice$rightdice.png'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
