import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _List = [
    "how are you ?",
    "How old are you ?",
    "What is your name ?",
    "What is your nationality ?"
  ];
  int num = 0;
  void randomQuistion() {
    setState(() {
      num = Random().nextInt(_List.length);
    });
  }

  int numRandom = 0;
  RandomNumber() {
    setState(() {
      numRandom = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Random",
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                // to make variable clickable
                onTap: () {
                  randomQuistion();
                },
                child: Text(
                  _List[num].toString(),
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  RandomNumber();
                },
                child: Text(
                  numRandom.toString(),
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}



// searsh list.generate