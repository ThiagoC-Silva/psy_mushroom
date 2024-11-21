// screens/mushroom_details.dart
import 'package:flutter/material.dart';
import 'package:psy_mushroom/models/mushroom.dart';
import 'package:psy_mushroom/screens/cart.dart';
import 'package:psy_mushroom/widgets/text_styles.dart';

class MushroomDetailsScreen extends StatefulWidget {
  final Mushroom mushroom;

  const MushroomDetailsScreen({super.key, required this.mushroom});

  @override
  State<MushroomDetailsScreen> createState() => _MushroomDetailsScreenState();
}

class _MushroomDetailsScreenState extends State<MushroomDetailsScreen> {
  final TextEditingController _quantityController = TextEditingController();

  // Função para adicionar item ao carrinho
  void addToCart() {
    if (_quantityController.text.isNotEmpty) {
      double quantity = double.parse(_quantityController.text);

      // Adiciona o item ao carrinho usando a classe Cart
      setState(() {
        Cart.addToCart(widget.mushroom, quantity);
      });

      // Exibe um snack bar informando que o item foi adicionado
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('${widget.mushroom.title} adicionado ao carrinho')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.mushroom.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                widget.mushroom.image,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              widget.mushroom.title,
              style: TextStyles.primary,
            ),
            const SizedBox(height: 8),
            Text(
              "Categoria: ${widget.mushroom.category}",
              style: TextStyles.bodyText,
            ),
            const SizedBox(height: 8),
            const Text(
              "Descrição:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              widget.mushroom.description,
              style: const TextStyle(fontSize: 16),
            ),
            const SizedBox(height: 16),
            const Text(
              "Digite a quantidade (em gramas):",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: _quantityController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                hintText: 'Quantidade em gramas',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: addToCart, // Chama a função de adicionar ao carrinho
              child: const Text('Adicionar ao Carrinho'),
            ),
          ],
        ),
      ),
    );
  }
}
