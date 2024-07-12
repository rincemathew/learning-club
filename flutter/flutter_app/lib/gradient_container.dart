import 'package:flutter/material.dart';
import 'package:flutter_app/styled_text.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(255, 87, 32, 180),
          Color.fromARGB(255, 75, 6, 194),
        ], begin: Alignment.bottomRight),
      ),
      child: const Center(child: StyledText('Hello world')),
    );
  }
}
