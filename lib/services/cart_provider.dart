import 'package:flutter/material.dart';
import '../models/dish.dart';

class CartItem {
  final Dish dish;
  int quantity;

  CartItem({required this.dish, this.quantity = 1});
}

class CartProvider with ChangeNotifier {
  final List<CartItem> _items = [];

  List<CartItem> get items => _items;

  double get total => _items.fold(
    0.0,
    (previousValue, item) => previousValue + (item.dish.price * item.quantity),
  );

  void addItem(Dish dish) {
    int index = _items.indexWhere((item) => item.dish.id == dish.id);
    if (index >= 0) {
      _items[index].quantity++;
    } else {
      _items.add(CartItem(dish: dish));
    }
    notifyListeners();
  }

  void updateQuantity(String dishId, int quantity) {
    if (quantity <= 0) {
      _items.removeWhere((item) => item.dish.id == dishId);
    } else {
      int index = _items.indexWhere((item) => item.dish.id == dishId);
      if (index >= 0) {
        _items[index].quantity = quantity;
      }
    }
    notifyListeners();
  }

  void clearCart() {
    _items.clear();
    notifyListeners();
  }
}
