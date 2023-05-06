import 'package:flutter/cupertino.dart';

import 'drink.dart';

class bubbleteashope extends ChangeNotifier {
  final List<Drink> _shope = [
    Drink(
        name: 'Pearl Milik Tea',
        price: '4:00',
        ImagePage: 'assets/image/1.png'),
    Drink(
        name: ' Smoothie Milk',
        price: '5.00',
        ImagePage: 'assets/image/blub2.png'),
  ];

  final List<Drink> _userCart = [];
  List<Drink> get shope => _shope;
  List<Drink> get cart => _userCart;
  void addToCart(Drink drink) {
    _userCart.add(drink);
    notifyListeners();
  }

  void removeFromCart(Drink drink) {
    _userCart.remove(drink);
    notifyListeners();
  }
}
