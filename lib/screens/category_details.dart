import 'package:flutter/material.dart';
import 'package:psy_mushroom/data/mushroom_data.dart';
import 'package:psy_mushroom/models/mushroom.dart';
import 'package:psy_mushroom/screens/mushroom_details.dart'; 

class CategoryDetails extends StatelessWidget {
  final String category;

  const CategoryDetails({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    // Filtra os cogumelos pela categoria selecionada
    List<Mushroom> mushroomsInCategory = mushroomList.where((mushroom) => mushroom.category == category).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('$category - Cogumelos'),
      ),
      body: ListView.builder(
        itemCount: mushroomsInCategory.length,
        itemBuilder: (context, index) {
          Mushroom mushroom = mushroomsInCategory[index];
          
          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MushroomDetailsScreen(mushroom: mushroom),
                  ),
                );
              },
              child: ListTile(
                leading: Image.asset(mushroom.image, width: 50, height: 50),
                title: Text(mushroom.title),
                subtitle: Text(mushroom.description),
                trailing: Text('R\$ ${mushroom.price.toStringAsFixed(2)}'),
              ),
            ),
          );
        },
      ),
    );
  }
}
