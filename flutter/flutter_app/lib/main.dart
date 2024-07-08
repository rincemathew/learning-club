import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
        backgroundColor: Colors.lightBlueAccent, body: GradientContainer()),
  ));
}

class GradientContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 87, 32, 180),
          Color.fromARGB(255, 75, 6, 194),
        ], begin: Alignment.bottomRight),
      ),
      child: const Center(
        child: Text(
          'Hello world',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
