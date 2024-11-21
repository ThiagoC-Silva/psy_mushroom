import 'package:flutter/material.dart';
import 'package:psy_mushroom/screens/cart.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Carrinho de Compras"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Adicionando SingleChildScrollView para permitir rolagem quando necessário
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    // Verifica se há itens no carrinho
                    if (Cart.cartItems.isEmpty)
                      const Center(
                        child: Text(
                          'Carrinho vazio!',
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ),
                    // Exibe os itens do carrinho se houver
                    ...Cart.cartItems.map((cartItem) {
                      double totalItemPrice = cartItem.mushroom.price * cartItem.quantity;

                      return Card(
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        child: ListTile(
                          leading: Image.asset(cartItem.mushroom.image, width: 50, height: 50),
                          title: Text(cartItem.mushroom.title),
                          subtitle: Text('Quantidade: ${cartItem.quantity}g - R\$ ${totalItemPrice.toStringAsFixed(2)}'),
                          trailing: IconButton(
                            icon: const Icon(Icons.remove_circle_outline),
                            onPressed: () {
                              // Remover o item do carrinho
                              Cart.cartItems.remove(cartItem);
                              // Atualiza a tela
                              (context as Element).markNeedsBuild();
                            },
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ),
            // Exibe o total do carrinho
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "Total:",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "R\$ ${Cart.calculateTotal().toStringAsFixed(2)}",
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Ação para finalizar a compra
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Compra finalizada com sucesso!')),
                );
              },
              child: const Text('Finalizar Compra'),
            ),
          ],
        ),
      ),
    );
  }
}
