import 'package:blubble_tea_shope/model/salt.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../components/drink_title.dart';
import '../components/salat_title.dart';
import '../model/drink.dart';
import '../model/shope.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  void removeFromCart(Drink drink) {
    Provider.of<bubbleteashope>(context, listen: false).removeFromCart(drink);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<bubbleteashope>(
        builder: (context, value, child) => SafeArea(
                child: Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  const Text(
                    "Ваш Корзина",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                      child: ListView.builder(
                          itemCount: value.cart.length,
                          itemBuilder: (context, index) {
                            Drink drink = value.cart[index];
                            return DrinkTitle(
                                drink: drink,
                                onTap: () => removeFromCart(drink),
                                trailing: const Icon(Icons.delete));
                          })),
                  Expanded(
                      child: ListView.builder(
                          itemCount: value.cart.length,
                          itemBuilder: (context, index) {
                            Salat salat = value.cart[index] as Salat;
                            return SalatTitle(
                                salat: salat,
                                onTap: () => removeFromCart(salat as Drink),
                                trailing: const Icon(Icons.delete));
                          })),
                  MaterialButton(
                      child: const Text("Pay"),
                      color: Colors.brown,
                      onPressed: () {}),
                ],
              ),
            )));
  }
}
