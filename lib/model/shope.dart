import 'package:blubble_tea_shope/model/salt.dart';
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
        price: '3.00',
        ImagePage: 'assets/image/blub2.png'),
    Drink(name: 'Moxito', price: '5.00', ImagePage: 'assets/image/mox.png'),
    Drink(
        name: 'Cocktail with Oreo',
        price: '5.00',
        ImagePage: 'assets/image/koktels.png'),
    Drink(
        name: 'Affogato(Late)',
        price: '5.00',
        ImagePage: 'assets/image/late.png'),
    Drink(
        name: ' Eggnog Frappé ',
        price: '5.00',
        ImagePage: 'assets/image/coctail.png'),
    Drink(name: 'Pepsi', price: '1', ImagePage: 'assets/image/pepsi.png'),
    Drink(name: 'Coco_Cola', price: '1.5', ImagePage: 'assets/image/coco.png')
  ];

  List _shope2 = [
    Salat(name: 'Chizburger ', price: '1', ImagePage: 'assets/image/chiz.png'),
    Salat(name: 'Сhicken ', price: '2', ImagePage: 'assets/image/chiking.png'),
    Salat(name: 'Hod-Dog ', price: '1,5', ImagePage: 'assets/image/hod.png'),
    Salat(name: 'Shawarma ', price: '2', ImagePage: 'assets/image/lavash.png'),
    Salat(
        name: 'French Fries ',
        price: '0.5',
        ImagePage: 'assets/image/free.png'),
    Salat(
        name: 'Margaret ', price: '2.5', ImagePage: 'assets/image/Marselo.png'),
    Salat(
        name: 'Papironi ', price: '3.5', ImagePage: 'assets/image/pizzi1.png'),
    Salat(
        name: 'Meat Pizza ', price: '4.5', ImagePage: 'assets/image/pizzi.png'),
    Salat(name: '4 in one ', price: '1.5', ImagePage: 'assets/image/mini.png'),
    Salat(
        name: 'Chicken Wings ',
        price: '2.5',
        ImagePage: 'assets/image/chiking1.png'),
    Salat(
        name: 'Meat Assarti', price: '2.5', ImagePage: 'assets/image/meat.png'),
  ];

  List get shope2 => _shope2;

  // void removeFromCart(Salat salat) {
  //   _userCart.remove(salat);
  //   notifyListeners();
  // }

  final List _userCart = [];
  List get shope => _shope;
  List get cart => _userCart;
  void addToCart(Drink drink) {
    _userCart.add(drink);
    notifyListeners();
  }

  void addToCartSalat(Salat salat) {
    _userCart.add(salat);
    notifyListeners();
  }

  void removeFromCart(Drink drink) {
    _userCart.remove(drink);
    notifyListeners();
  }

  void removeFromCartSalat(Salat salat) {
    _userCart.remove(salat);
    notifyListeners();
  }
}
