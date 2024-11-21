import 'package:flutter/material.dart';
import 'package:psy_mushroom/models/mushroom.dart';
import 'package:psy_mushroom/screens/mushroom_details.dart';

class MushroomGridItem extends StatelessWidget {
  const MushroomGridItem({super.key, required this.mushroom});

  final Mushroom mushroom;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context, 
          MaterialPageRoute(builder: (context) => MushroomDetailsScreen(mushroom: mushroom)));
      },
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.grey[200], // Fundo suave para destacar o conteúdo
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Exibe a imagem do cogumelo
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  mushroom.image,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
            ),
            const SizedBox(height: 8),
            // Exibe o título
            Text(
              mushroom.title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4),
            // Exibe o preço
            Text(
              'R\$ ${mushroom.price.toStringAsFixed(2)}',
              style: const TextStyle(
                fontSize: 14,
                color: Colors.green,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
