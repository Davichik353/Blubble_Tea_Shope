//import 'package:bubble_tea/Home/shope_page.dart';
//import 'package:bubble_tea/components/bottom_nav.dart';
import 'package:blubble_tea_shope/home/shope.dart';
import 'package:blubble_tea_shope/home/shope1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../components/bottom.dart';
import 'cart.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selecterIndex = 0;
  void navigateBottomBar(int newIndex) {
    setState(() {
      _selecterIndex = newIndex;
    });
  }

  final List<Widget> _pages = [
    const ShopePage(),
    const ShopePage1(),
    const CartPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selecterIndex],
      backgroundColor: Colors.brown[200],
    );
  }
}
