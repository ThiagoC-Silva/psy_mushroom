import 'package:flutter/material.dart';
import 'package:psy_mushroom/screens/mushrooms.dart';

void main() {
  runApp(const PsyMushroom());
}

class PsyMushroom extends StatelessWidget {
  const PsyMushroom({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MushroomsScreen(),
    );
  }
}
