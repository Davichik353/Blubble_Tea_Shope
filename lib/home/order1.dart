import 'package:blubble_tea_shope/model/salt.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/drink.dart';
import '../model/shope.dart';

class OrderPage1 extends StatefulWidget {
  final Salat salat;
  const OrderPage1({
    super.key,
    required this.salat,
  });

  @override
  State<OrderPage1> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage1> {
  //sweet custom
  double sweetValue = 0.0;
  void customizeSweet(double newValue) {
    setState(() {
      sweetValue = newValue;
    });
  }

  double iceValue = 0.0;
  void customizeIce(double newValue) {
    setState(() {
      iceValue = newValue;
    });
  }

  double pwarlsValue = 0.0;
  void customizePwarls(double newValue) {
    setState(() {
      pwarlsValue = newValue;
    });
  }

  //add card
  void addCard() {
    Provider.of<bubbleteashope>(context, listen: false)
        .addToCartSalat(widget.salat);
    Navigator.pop(context);
    //ответ на нажатий кнопки
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Все успешно добавлено на корзину"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.salat.name),
      ),
      backgroundColor: Colors.brown[200],
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            //drink image
            Image.asset(widget.salat.ImagePage),
            Row(
              children: [
                SizedBox(
                  width: 80,
                ),
                Text('How much'),
                Text('  do I need?')
              ],
            ),
            Slider(
                value: sweetValue,
                label: sweetValue.toString(),
                divisions: 10,
                onChanged: (value) => customizeSweet(value)),
            //add to cart button
            MaterialButton(
                child: Text('Add to Cart'),
                color: Colors.brown,
                onPressed: addCard)
          ],
        ),
      ),
    );
  }
}
