import 'package:blubble_tea_shope/home/order.dart';
import 'package:blubble_tea_shope/model/drink.dart';
import 'package:blubble_tea_shope/model/salt.dart';
import 'package:blubble_tea_shope/model/shope.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';

import '../components/salat_title.dart';
import '../model/shope2.dart';
import 'order1.dart';

class ShopePage1 extends StatefulWidget {
  const ShopePage1({super.key});

  @override
  State<ShopePage1> createState() => _ShopePage1State();
}

class _ShopePage1State extends State<ShopePage1> {
//user go to order page
  void goToOrderPage(Salat salat) {
    //navigarot
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => OrderPage1(
            salat: salat,
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
                      itemCount: value.shope2.length,
                      itemBuilder: (context, index) {
                        Salat individualSalat = value.shope2[index];
                        return SalatTitle(
                          salat: individualSalat,
                          trailing: Icon(Icons.arrow_forward_ios_sharp),
                          onTap: () => goToOrderPage(individualSalat),
                        );
                      }))
            ],
          ),
        ),
      ),
    );
  }
}
