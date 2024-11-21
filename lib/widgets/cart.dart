import 'package:psy_mushroom/models/mushroom.dart';

class CartItem {
  final Mushroom mushroom;
  final double quantity;

  CartItem({required this.mushroom, required this.quantity});
}

class Cart {
  static List<CartItem> cartItems = [];

  // Adicionar item ao carrinho
  static void addToCart(Mushroom mushroom, double quantity) {
    cartItems.add(CartItem(mushroom: mushroom, quantity: quantity));
  }

  // Calcular o total do carrinho
  static double calculateTotal() {
    double total = 0.0;
    for (var item in cartItems) {
      total += item.mushroom.price * item.quantity;
    }
    return total;
  }
}
