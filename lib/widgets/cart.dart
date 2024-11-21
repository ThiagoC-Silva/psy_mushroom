import 'package:psy_mushroom/models/mushroom.dart';
import 'package:psy_mushroom/models/cart_item.dart';


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
