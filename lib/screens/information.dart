import 'package:flutter/material.dart';
import 'package:psy_mushroom/screens/mushrooms.dart';

class InformationScreen extends StatelessWidget{
  const InformationScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 251, 51, 235),
              ),
              child: Text(
                'Grupo',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 44 ),
              ),
            ),
            ListTile(
              title: const Text(
                'PsyMushrooms',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23 ),
              ),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MushroomsScreen(

                        )
                    ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'About',
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23 ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const InformationScreen(

                      )
                  ),
                );
              },
            ),
          ],
        ),
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
      body: Center(
        child: const Text('ABOUT'),
      ),
    );
  }

}

