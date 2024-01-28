import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const MahiApp());
}

class MahiApp extends StatelessWidget {
  const MahiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: Colors.red),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> paths = [
    'Dices/dice-one.png',
    'Dices/dice-two.png',
    'Dices/dice-three.png',
    'Dices/dice-four.png',
    'Dices/dice-five.png',
    'Dices/dice-six.png',
  ];

  var _selectedIndex = 0;

  void rollDice() {
    // print(Random().nextInt(6));
    setState(() {
      _selectedIndex = Random().nextInt(6);
    });
    print('selected index is $_selectedIndex');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Center(
            child: Text('Roll The Dice', textAlign: TextAlign.center)),
      ),
      body: Container(
        color: Colors.pink,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 0, horizontal: 40),
                child: Image.asset(
                  paths[_selectedIndex],
                  fit: BoxFit.cover,
                )),
            ElevatedButton(
              onPressed: rollDice,
              style: ElevatedButton.styleFrom(
                  elevation: 15,
                  fixedSize: const Size(200, 10),
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.pink),
              child: const Text("Roll Here"),
            )
          ],
        ),
      ),
    );
  }
}
