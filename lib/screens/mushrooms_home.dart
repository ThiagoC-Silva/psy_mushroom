import 'package:flutter/material.dart';
import 'package:psy_mushroom/data/mushroom_data.dart';
import 'package:psy_mushroom/screens/cart_screen.dart';
import 'package:psy_mushroom/screens/information.dart';
import 'package:psy_mushroom/widgets/mushroom_grid_item.dart';
import 'package:psy_mushroom/widgets/text_styles.dart';
import 'categories.dart'; 

class MushroomsScreen extends StatefulWidget {
  const MushroomsScreen({super.key});

  @override
  MushroomsScreenState createState() => MushroomsScreenState();
}

class MushroomsScreenState extends State<MushroomsScreen> {
  int _currentIndex = 0;

  // Função para navegar entre as telas
  void _onBottomNavTapped(int index) {
    setState(() {_currentIndex = index;});

    if (index == 0) {
      // Se o índice for 0, navega para a tela Categories
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Categories()),
      );
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const CartScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Sidedrwaer
      drawer: Drawer(
        child: Column(
          children: [
            const DrawerHeader(child: Text("Psy Mushrooms")),
            //Informações sobre o projeto e os integrantes
            ListTile(
              title: const Text('About'), 
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const InformationScreen()),
                );
              }
            )
          ],
        ),
      ),

      appBar: AppBar(
        centerTitle: true,
        title: Text('PsyMushroom', style: TextStyles.primary, textAlign: TextAlign.center,),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onBottomNavTapped, // Atualiza o índice e navega para a tela desejada
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.grass),
            label: "Mushrooms Categories",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_basket),
            label: "My Cart",
          ),
        ],
      ),
      
      body: GridView(
        padding: const EdgeInsets.only(top: 20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          for (final mushroom in mushroomList)
            MushroomGridItem(mushroom: mushroom),
        ],
      ),
    );
  }
}
