import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue,
          appBar: AppBar(
            backgroundColor: Colors.blueGrey,
            title: const Text(
              'Ask Me Anything',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            centerTitle: true,
          ),
          body: askMeAnything(),
        ),
      ),
    ),
  );
}

class askMeAnything extends StatefulWidget {
  const askMeAnything({super.key});

  @override
  State<askMeAnything> createState() => _askMeAnythingState();
}

class _askMeAnythingState extends State<askMeAnything> {
  int number = 1;

  void randomNumber() {
    number = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          setState(() {
            randomNumber();
          });
          print('i got clicked');
        },
        child: Image.asset('images/ball$number.png'),
      ),
    );
  }
}
