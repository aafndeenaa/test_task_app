import 'dart:math';

import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final Random _random = Random();
  Color _color = const Color(0xFFFFFFFF);
  void changeColor() {
    _color = Color.fromARGB(
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
      _random.nextInt(256),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Test Task'),
        backgroundColor:Colors.primaries[Random().nextInt(Colors.primaries.length)],
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              changeColor();
            });
          },
          child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color:
                  Colors.primaries[Random().nextInt(Colors.primaries.length)],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  '"Hello there"',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
