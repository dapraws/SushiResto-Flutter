import 'package:flutter/material.dart';

import 'food.dart';

class Shop extends ChangeNotifier {
  // food menu
  final List<Food> _foodMenu = [
    // ikura
    Food(
      name: "Ikura",
      price: "21.00",
      imagePath: "lib/images/ikura.png",
      rating: "4.9",
    ),

    // Nigiri
    Food(
      name: "Nigiri",
      price: "25.00",
      imagePath: "lib/images/nigiri.png",
      rating: "5.0",
    ),
  ];

  // customer cart
  List<Food> _cart = [];

  // getter methods
  List<Food> get foodMenu => _foodMenu;
  List<Food> get cart => _cart;

  // add to cart
  void addToCart(Food foodItem, int quantity) {
    for (int i = 0; i < quantity; i++) {
      _cart.add(foodItem);
    }
    notifyListeners();
  }

  // remove from cart
  void removeFromCart(Food foodItem) {
    _cart.remove(foodItem);
    notifyListeners();
  }
}
