import 'package:flutter/material.dart';

class MushroomsScreen extends StatelessWidget{
  const MushroomsScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PSY MUSHROOMS'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: 0,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.grass),
                label: "Mushrooms"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_basket),
                label: "My cart"
            ),
          ],
        ),
        body: const SizedBox.expand(),
    );
  }
}