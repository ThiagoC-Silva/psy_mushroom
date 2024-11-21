import 'package:flutter/material.dart';
import 'package:psy_mushroom/models/mushroom.dart';
import 'package:psy_mushroom/widgets/text_styles.dart';

class MushroomDetailsScreen extends StatelessWidget {
  final Mushroom mushroom;

  const MushroomDetailsScreen({super.key, required this.mushroom});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                mushroom.image,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              mushroom.title,
              style: TextStyles.primary
            ),
            const SizedBox(height: 8),
            Text(
              "Categoria: ${mushroom.category}",
              style: TextStyles.bodyText,
            ),
            const SizedBox(height: 8),
            const Text(
              "Descrição:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              mushroom.description,
              style: const TextStyle(fontSize: 16),
            ),
            const Spacer(),
            Text(
              "Preço: R\$ ${mushroom.price.toStringAsFixed(2)}",
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
