import 'package:mushroom/widgets/mushroom_grid_item.dart';
import 'package:flutter/material.dart';
import 'package:mushroom/data/dummy_data.dart';

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
          items: [
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
        body: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3/2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: [
            //availableCategories.map((e) => CategoryGridItem(category: category)).toList()
            for (final mushroom in availableMushrooms)
              MushroomGridItem(mushroom: mushroom)
          ],)
    );
  }
}