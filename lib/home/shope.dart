import 'package:blubble_tea_shope/home/order.dart';
import 'package:blubble_tea_shope/model/shope.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../components/drink_title.dart';
import '../model/drink.dart';

class ShopePage extends StatefulWidget {
  const ShopePage({super.key});

  @override
  State<ShopePage> createState() => _ShopePageState();
}

class _ShopePageState extends State<ShopePage> {
//user go to order page
  void goToOrderPage(Drink drink) {
    //navigarot
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OrderPage(
            drink: drink,
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<bubbleteashope>(
      builder: (context, value, child) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            children: [
              Text(
                'Bubble Tea Shope',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: value.shope.length,
                      itemBuilder: (context, index) {
                        Drink individualDrink = value.shope[index];
                        return DrinkTitle(
                          drink: individualDrink,
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                          onTap: () => goToOrderPage(individualDrink),
                        );
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
