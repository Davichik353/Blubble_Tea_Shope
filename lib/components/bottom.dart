import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 25.0),
      child: GNav(
        onTabChange: (value) => onTabChange!(value),
        mainAxisAlignment: MainAxisAlignment.center,
        activeColor: Colors.white,
        color: Colors.grey,
        gap: 8,
        tabActiveBorder: Border.all(color: Colors.white),
        tabs: [
          GButton(icon: Icons.home, text: 'Home'),
          GButton(
            icon: Icons.shopping_bag,
            text: 'Cart',
          )
        ],
      ),
    );
  }
}
