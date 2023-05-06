import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../model/drink.dart';

class DrinkTitle extends StatelessWidget {
  DrinkTitle(
      {super.key,
      required this.drink,
      required this.onTap,
      required this.trailing});
  final Drink drink;
  final Widget trailing;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
          color: Colors.brown[100], borderRadius: BorderRadius.circular(12)),
      child: GestureDetector(
        onTap: onTap,
        child: ListTile(
          title: Text(drink.name),
          subtitle: Text(drink.price),
          leading: Image.asset(drink.ImagePage),
          trailing: trailing,
        ),
      ),
    );
  }
}
