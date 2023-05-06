import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/drink.dart';
import '../model/shope.dart';

class OrderPage extends StatefulWidget {
  final Drink drink;
  const OrderPage({super.key, required this.drink});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
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
    Provider.of<bubbleteashope>(context, listen: false).addToCart(widget.drink);
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
        title: Text(widget.drink.name),
      ),
      backgroundColor: Colors.brown[200],
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          children: [
            //drink image
            Image.asset(widget.drink.ImagePage),
            //sliders to customize drink
            Column(
              children: [
                // sweetness slider
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 100, child: Text('Sweet')),
                    Expanded(
                      child: Slider(
                          value: sweetValue,
                          label: sweetValue.toString(),
                          divisions: 4,
                          onChanged: (value) => customizeSweet(value)),
                    )
                  ],
                ),

                //ice slider
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 100, child: Text('Ice')),
                    Expanded(
                      child: Slider(
                          value: iceValue,
                          label: iceValue.toString(),
                          divisions: 4,
                          onChanged: (value) => customizeIce(value)),
                    )
                  ],
                ),
                //pearls slider
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 100, child: Text('Pwarls')),
                    Expanded(
                      child: Slider(
                          value: pwarlsValue,
                          label: pwarlsValue.toString(),
                          divisions: 4,
                          onChanged: (value) => customizePwarls(value)),
                    )
                  ],
                ),
              ],
            ),
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
