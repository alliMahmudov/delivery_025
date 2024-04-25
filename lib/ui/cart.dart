import 'package:delivery_025/model/fast_food_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Cart extends ChangeNotifier{


  final List<FastFood> _foodMenu = [];

  List<FastFood> _cart = [];

  List<FastFood> get foodMenu => _foodMenu;
  List<FastFood> get cart => _cart;


  void addToCart(FastFood food, int qty){
    for(int i =0; i< qty; i++){
      _cart.add(food);
    }
    notifyListeners();
  }

  void removeFromCart(FastFood food){
    _cart.remove(food);
    notifyListeners();
  }


}


class CartManager extends ChangeNotifier {
  List<CartItem> _cartItems = [];

  List<CartItem> get cartItems => _cartItems;

  void addToCart(FastFood food) {
    // Check if the food item is already in the cart
    int index = _cartItems.indexWhere((item) => item.food.id == food.id);

    if (index != -1) {
      // Item already exists in the cart, update the quantity
      _cartItems[index].quantity++;
    } else {
      // Item doesn't exist in the cart, add it with quantity = 1
      _cartItems.add(CartItem(food: food, quantity: 1));
    }

    notifyListeners();
  }

  void removeFromCart(FastFood food) {
    // Check if the food item is in the cart
    int index = _cartItems.indexWhere((item) => item.food.id == food.id);

    if (index != -1) {
      if (_cartItems[index].quantity > 1) {
        // Decrease the quantity if more than one
        _cartItems[index].quantity--;
      } else {
        // Remove the item from the cart if quantity is one
        _cartItems.removeAt(index);
      }

      notifyListeners();
    }
  }

  double getTotalPrice() {
    return _cartItems.fold(0.0, (total, item) => total + (double.parse(item.food.price.substring(0, item.food.price.length - 2)) * item.quantity));
  }
}

class CartItem {
  final FastFood food;
  int quantity;

  CartItem({required this.food, required this.quantity});
}
