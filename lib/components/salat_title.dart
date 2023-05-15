import 'package:blubble_tea_shope/model/salt.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../model/drink.dart';

class SalatTitle extends StatelessWidget {
  SalatTitle(
      {super.key,
      required this.salat,
      required this.trailing,
      required void Function() this.onTap});
  final Salat salat;
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
          title: Text(salat.name),
          subtitle: Text(salat.price),
          leading: Image.asset(salat.ImagePage),
          trailing: trailing,
        ),
      ),
    );
  }
}
