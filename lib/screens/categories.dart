import 'package:flutter/material.dart';
import 'package:psy_mushroom/data/mushroom_data.dart';
import 'package:psy_mushroom/models/mushroom.dart';
import 'package:psy_mushroom/screens/category_details.dart';  // Importe a tela de detalhes

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    Map<String, List<Mushroom>> categorizedMushrooms = {};

    // Organiza os cogumelos por categoria
    for (var mushroom in mushroomList) {
      if (!categorizedMushrooms.containsKey(mushroom.category)) {
        categorizedMushrooms[mushroom.category] = [];
      }
      categorizedMushrooms[mushroom.category]!.add(mushroom);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cogumelos por Categoria'),
      ),
      body: ListView(
        children: categorizedMushrooms.entries.map((entry) {
          String category = entry.key;
          int mushroomCount = entry.value.length;

          return Card(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              title: Text(
                '$category - $mushroomCount opções',
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                // Navega para a tela de detalhes passando a categoria
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryDetails(category: category),
                  ),
                );
              },
            ),
          );
        }).toList(),
      ),
    );
  }
}
